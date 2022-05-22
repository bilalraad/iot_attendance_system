import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_attendance_system/app_router.gr.dart';
import 'package:iot_attendance_system/blocs/sessions_bloc/sessions_bloc.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/helper/res_with_count.dart';
import 'package:iot_attendance_system/models/session.dart';
import 'package:iot_attendance_system/utils/pick_file_dialog.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';
import 'package:iot_attendance_system/view/widgets/error_widget.dart';
import 'package:iot_attendance_system/utils/app_utils.dart';
import 'package:iot_attendance_system/view/widgets/file_picker_widget.dart';

int limit = 25;

class SessionsList extends StatefulWidget {
  const SessionsList({Key? key}) : super(key: key);

  @override
  State<SessionsList> createState() => _SessionsListState();
}

class _SessionsListState extends State<SessionsList> {
  late SessionsBloc _sessionsB;
  int _nextPageKey = 0;

  @override
  void initState() {
    _sessionsB = SessionsBloc.of(context);
    _sessionsB.add(const SessionsEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionsBloc, BlocsState<ResWithCount<Session>>>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: state.whenOrNull(
                data: (res) {
                  return PaginatedDataTable(
                    columns: const [
                      DataColumn(label: Text(Strings.name)),
                      DataColumn(label: Text(Strings.date)),
                      DataColumn(label: Text(Strings.participants)),
                      DataColumn(label: Text(Strings.actions)),
                    ],
                    actions: [
                      AppButton(
                          onPressed: () {
                            AutoRouter.of(context).push(const PickExcelRoute());
                          },
                          icon: const Icon(Icons.add),
                          text: Strings.createSession)
                    ],
                    header: const Text(Strings.sessions),
                    source: SessionsData(res.results, res.count,
                        onSessionDelete: (id) =>
                            _sessionsB.add(SessionsEvent.deleteSession(id)),
                        onParticipantsImport: (id) {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return PickFileDialog(
                                  onSubmit: (f) {
                                    _sessionsB.add(
                                        SessionsEvent.uploadParticipants(
                                            id, f));
                                  },
                                );
                              });
                        }),
                    rowsPerPage: res.count > 0 ? res.results.length : 1,
                    columnSpacing: MediaQuery.of(context).size.width / 7.5,
                    dataRowHeight: 70,
                    showCheckboxColumn: false,
                    onPageChanged: (page) {
                      final nextPageKey = (res.results.length) + limit;
                      final isLastPage = nextPageKey >= res.count;
                      _nextPageKey = nextPageKey;
                      if (isLastPage) return;
                      _sessionsB.add(SessionsEvent.loadSessions(nextPageKey));
                    },
                  );
                },
                loading: () =>
                    const Center(child: CircularProgressIndicator.adaptive()),
                failure: (e) => AppErrorWidget(
                    onRefresh: () {
                      _sessionsB.add(SessionsEvent.loadSessions(_nextPageKey));
                    },
                    errorMessage: e.readableMessage)),
          ),
        );
      },
    );
  }
}

class SessionsData extends DataTableSource {
  final List<Session> _data;
  final int totalCount;
  final void Function(int)? onSessionDelete;
  final void Function(int)? onParticipantsImport;

  SessionsData(this._data, this.totalCount,
      {this.onSessionDelete, this.onParticipantsImport});

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index].name)),
      DataCell(Text(_data[index].date.format()!)),
      DataCell(Text(_data[index].participantsCount.toString())),
      DataCell(Row(
        children: [
          AppButton(
            onPressed: _data[index].participantsCount == 0
                ? () => onParticipantsImport?.call(_data[index].id)
                : null,
            text: 'Import Participants',
            height: 40,
          ),
          const SizedBox(width: 10),
          AppButton(
            onPressed: () {},
            text: 'View participants',
            height: 40,
            backgroundColor: Colors.blueGrey,
            buttonType: ButtonType.secondary,
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => onSessionDelete?.call(_data[index].id),
            color: Colors.red,
            icon: const Icon(Icons.delete),
          ),
        ],
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => totalCount;

  @override
  int get selectedRowCount => 0;
}
