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
    return Scaffold(
      body: BlocBuilder<SessionsBloc, BlocsState<ResWithCount<Session>>>(
        builder: (context, state) {
          return Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: state.whenOrNull(
                  data: (res) {
                    return PaginatedDataTable(
                      columns: const [
                        DataColumn(label: Text(Strings.actions)),
                        DataColumn(label: Text(Strings.name)),
                        DataColumn(label: Text(Strings.date)),
                        DataColumn(label: Text(Strings.participants)),
                      ],
                      actions: [
                        AppButton(
                            onPressed: () {
                              AutoRouter.of(context)
                                  .push(const PickExcelRoute());
                            },
                            icon: const Icon(Icons.add),
                            text: Strings.createSession)
                      ],
                      header: const Text(Strings.sessions),
                      source: SessionsData(res.results, res.count,
                          //TODO: Show delete success message
                          onSessionDelete: (id) =>
                              _sessionsB.add(SessionsEvent.deleteSession(id)),
                          onParticipantsImport: (id) {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return PickFileDialog(
                                    onSubmit: (f) {
                                      //TODO: Show upload success message
                                      _sessionsB.add(
                                          SessionsEvent.uploadParticipants(
                                              id, f));
                                    },
                                  );
                                });
                          },
                          onViewParticipants: (id) {
                            AutoRouter.of(context)
                                .push(ParticipantsListRoute(sessionId: id));
                          }),
                      rowsPerPage: res.count > 0 ? res.results.length : 1,
                      columnSpacing: MediaQuery.of(context).size.width / 8.5,
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
                        _sessionsB
                            .add(SessionsEvent.loadSessions(_nextPageKey));
                      },
                      errorMessage: e.readableMessage)),
            ),
          );
        },
      ),
    );
  }
}

class SessionsData extends DataTableSource {
  final List<Session> _data;
  final int totalCount;
  final void Function(int)? onSessionDelete;
  final void Function(int)? onParticipantsImport;
  final void Function(int)? onViewParticipants;

  SessionsData(this._data, this.totalCount,
      {this.onSessionDelete,
      this.onParticipantsImport,
      this.onViewParticipants});

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          IconButton(
            onPressed: () => onSessionDelete?.call(_data[index].id),
            color: Colors.red,
            tooltip: 'Delete Session',
            icon: const Icon(Icons.delete),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: _data[index].participantsCount == 0
                ? () => onParticipantsImport?.call(_data[index].id)
                : null,
            color: Colors.blue,
            icon: const Icon(Icons.upload),
            tooltip: 'Import Participants',
          ),
          IconButton(
            onPressed: () => onViewParticipants?.call(_data[index].id),
            color: Colors.yellow[800],
            icon: const Icon(Icons.visibility_outlined),
            tooltip: 'View participants',
          ),
        ],
      )),
      DataCell(SelectableText(_data[index].name,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
      DataCell(SelectableText(_data[index].date.format()!)),
      DataCell(SelectableText(_data[index].participantsCount.toString())),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => totalCount;

  @override
  int get selectedRowCount => 0;
}
