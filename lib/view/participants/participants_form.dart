import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_attendance_system/blocs/participants_actions/participants_actions_cubit.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/utils/context_extensions.dart';
import 'package:iot_attendance_system/utils/enums.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/utils/validation_builder.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';
import 'package:iot_attendance_system/view/widgets/app_header.dart';
import 'package:iot_attendance_system/view/widgets/app_text_field.dart';
import 'package:iot_attendance_system/view/widgets/app_drop_dropdown.dart';

class ParticipantsFormScreen extends StatefulWidget {
  final String sessionId;
  const ParticipantsFormScreen(
      {Key? key, @PathParam('id') required this.sessionId})
      : super(key: key);

  @override
  State<ParticipantsFormScreen> createState() => _ParticipantsFormScreenState();
}

class _ParticipantsFormScreenState extends State<ParticipantsFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String info = '';
  InfoType type = InfoType.email;

  late ParticipantsActionsCubit _participantsActionsC;

  @override
  void initState() {
    _participantsActionsC = BlocProvider.of<ParticipantsActionsCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppHeader(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Choose how you want to record your attendance',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  AppDropDown<InfoType>(
                    onValueChanged: (v) => setState(() {
                      info = '';
                      type = v!;
                    }),
                    selectedValue: type,
                    title: 'Type',
                    values: InfoType.values.sublist(0, 2),
                    translateFunction: (v) => v.name.toUpperCase(),
                  ),
                  const SizedBox(height: 10),
                  if (type == InfoType.email)
                    AppTextField(
                      labelText: 'Your Email',
                      enabled: type == InfoType.email,
                      onChanged: (v) {
                        info = v;
                        if (v.isNotEmpty && type != InfoType.email) {
                          setState(() => type = InfoType.email);
                        }
                      },
                      validator: ValidationBuilder().required().email().build(),
                    ),
                  const SizedBox(height: 10),
                  if (type == InfoType.phone)
                    AppTextField(
                      enabled: type == InfoType.phone,
                      labelText: 'Your Phone Number',
                      prefixWidget: const Text('+964'),
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (v) {
                        info = v;
                        if (v.isNotEmpty && type != InfoType.phone) {
                          setState(() => type = InfoType.phone);
                        }
                      },
                      validator: ValidationBuilder().required().build(),
                    ),
                  const SizedBox(height: 10),
                  BlocBuilder<ParticipantsActionsCubit, BlocsState>(
                    builder: (context, state) {
                      return AppButton(
                        isLoading: state.maybeWhen(
                            orElse: () => false, loading: () => true),
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) return;

                          await _participantsActionsC.recordAttendance(
                            int.parse(widget.sessionId),
                            info,
                            type,
                          );
                          _participantsActionsC.state.whenOrNull(
                            data: (_) =>
                                context.showSnackBar('Attendance Recorded'),
                            failure: (e) => context
                                .showSnackBar(e.readableMessage, isError: true),
                          );
                        },
                        text: Strings.submit,
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
