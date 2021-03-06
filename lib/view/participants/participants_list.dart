import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_attendance_system/app_router.dart';
import 'package:iot_attendance_system/app_router.gr.dart';
import 'package:iot_attendance_system/blocs/participants/participants_bloc.dart';
import 'package:iot_attendance_system/blocs/participants_actions/participants_actions_cubit.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/models/participant.dart';
import 'package:iot_attendance_system/models/session.dart';
import 'package:iot_attendance_system/utils/app_utils.dart';
import 'package:iot_attendance_system/utils/context_extensions.dart';
import 'package:iot_attendance_system/utils/download.dart';
import 'package:iot_attendance_system/utils/enums.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';
import 'package:iot_attendance_system/view/widgets/app_header.dart';
import 'package:iot_attendance_system/view/widgets/error_widget.dart';
import 'package:url_launcher/url_launcher.dart';

int limit = 25;

class ParticipantsListScreen extends StatefulWidget {
  final int sessionId;
  const ParticipantsListScreen({
    Key? key,
    @PathParam('id') required this.sessionId,
  }) : super(key: key);

  @override
  State<ParticipantsListScreen> createState() => _ParticipantsListScreenState();
}

class _ParticipantsListScreenState extends State<ParticipantsListScreen> {
  late ParticipantsBloc _participantB;
  late ParticipantsActionsCubit _participantsActionsC;

  @override
  void initState() {
    _participantB = ParticipantsBloc.of(context);
    _participantsActionsC = BlocProvider.of<ParticipantsActionsCubit>(context);

    _participantB.add(ParticipantsEvent.loadParticipants(widget.sessionId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppHeader(
        child: BlocBuilder<ParticipantsBloc, BlocsState<Session>>(
          builder: (context, state) {
            return Align(
              alignment: Alignment.topCenter,
              child: state.whenOrNull(
                  data: (res) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          res.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          res.date.format()!,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          '${res.participants.length} ${Strings.participant}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: SingleChildScrollView(
                            child: PaginatedDataTable(
                              columns: const [
                                DataColumn(label: Text(Strings.actions)),
                                DataColumn(label: Text(Strings.attended)),
                                DataColumn(label: Text(Strings.name)),
                                DataColumn(label: Text(Strings.email)),
                                DataColumn(label: Text(Strings.phoneNumber)),
                                DataColumn(label: Text(Strings.gender)),
                                DataColumn(label: Text(Strings.governorate)),
                                DataColumn(label: Text(Strings.dateOfBirth)),
                              ],
                              actions: [
                                AppButton(
                                    onPressed: res.participants.isEmpty
                                        ? null
                                        : () {
                                            if (kIsWeb && !kDebugMode) {
                                              launchUrl(Uri.parse(FRONT_URL +
                                                  Endpoint.participantsForm +
                                                  widget.sessionId.toString()));
                                              return;
                                            }
                                            AutoRouter.of(context).push(
                                                ParticipantsFormRoute(
                                                    sessionId: widget.sessionId
                                                        .toString()));
                                          },
                                    icon: const Icon(
                                        Icons.format_align_justify_rounded),
                                    text: Strings.participantsForm),
                                AppButton(
                                    onPressed: () =>
                                        downLoadSessionExcel(res.id.toString()),
                                    icon: const Icon(Icons.download),
                                    backgroundColor: Colors.blueGrey,
                                    text: Strings.downloadSessionExcel),
                                AppButton(
                                    onPressed: () {
                                      AutoRouter.of(context).push(
                                          AddParticipantRoute(
                                              sessionId:
                                                  widget.sessionId.toString()));
                                    },
                                    icon: const Icon(Icons.add),
                                    backgroundColor: Colors.amber[900],
                                    text: Strings.createParticipant),
                              ],
                              header: const Text(Strings.participants),
                              source: ParticipantsData(res.participants,
                                  onParticipantDelete: (id) async {
                                await _participantsActionsC.deleteParticipant(
                                    id, widget.sessionId);
                                _participantsActionsC.state.whenOrNull(
                                  data: (_) {
                                    context.showSnackBar(
                                        Strings.participantDeleted);
                                    _participantB.reload(widget.sessionId);
                                  },
                                  failure: (e) => context.showSnackBar(
                                      e.readableMessage,
                                      isError: true),
                                );
                              }, onRecordAttendance: (id) async {
                                await _participantsActionsC.recordAttendance(
                                    widget.sessionId,
                                    id.toString(),
                                    InfoType.id);
                                _participantsActionsC.state.whenOrNull(
                                  data: (_) {
                                    context.showSnackBar(
                                        Strings.attendanceRecorded);
                                    _participantB.reload(widget.sessionId);
                                  },
                                  failure: (e) => context.showSnackBar(
                                      e.readableMessage,
                                      isError: true),
                                );
                              }, onRemoveAttendance: (id) async {
                                await _participantsActionsC.removeAttendance(
                                  widget.sessionId,
                                  id.toString(),
                                );
                                _participantsActionsC.state.whenOrNull(
                                  data: (_) {
                                    context.showSnackBar(
                                        Strings.attendanceRemoved);
                                    _participantB.reload(widget.sessionId);
                                  },
                                  failure: (e) => context.showSnackBar(
                                      e.readableMessage,
                                      isError: true),
                                );
                              }),
                              rowsPerPage: res.participants.isNotEmpty
                                  ? (res.participants.length < limit
                                      ? res.participants.length
                                      : limit)
                                  : 1,
                              dataRowHeight: 70,
                              showCheckboxColumn: false,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator.adaptive()),
                  failure: (e) => AppErrorWidget(
                      onRefresh: () {
                        _participantB.add(ParticipantsEvent.loadParticipants(
                            widget.sessionId));
                      },
                      errorMessage: e.readableMessage)),
            );
          },
        ),
      ),
    );
  }
}

class ParticipantsData extends DataTableSource {
  final List<Participant> _data;
  final void Function(int)? onParticipantDelete;
  final void Function(int)? onRemoveAttendance;
  final void Function(int)? onRecordAttendance;

  ParticipantsData(
    this._data, {
    this.onParticipantDelete,
    this.onRecordAttendance,
    required this.onRemoveAttendance,
  });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          SizedBox(
            width: 150,
            height: 50,
            child: OutlinedButton(
              onPressed: _data[index].attendance
                  ? () => onRemoveAttendance?.call(_data[index].id)
                  : () => onRecordAttendance?.call(_data[index].id),
              // color: Colors.green,
              style: OutlinedButton.styleFrom(
                primary: !_data[index].attendance ? Colors.green : Colors.red,
              ),
              // tooltip: Strings.attended,
              child: Text(
                !_data[index].attendance
                    ? Strings.recordAttendance
                    : Strings.removeAttendance,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => onParticipantDelete?.call(_data[index].id),
            color: Colors.red,
            tooltip: Strings.deleteParticipant,
            icon: const Icon(Icons.delete),
          ),
        ],
      )),
      DataCell(Text(
        _data[index].attendance ? Strings.yes : Strings.no,
        style: TextStyle(
            color: _data[index].attendance ? Colors.green : Colors.red),
      )),
      DataCell(SelectableText(_data[index].name)),
      DataCell(SelectableText(_data[index].email)),
      DataCell(SelectableText(_data[index].phone)),
      DataCell(SelectableText(_data[index].gender.name)),
      DataCell(SelectableText(_data[index].governorate)),
      DataCell(SelectableText(_data[index].dateOfBirth.format()!)),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
