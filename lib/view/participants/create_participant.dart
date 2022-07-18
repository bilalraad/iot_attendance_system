import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_attendance_system/app_router.gr.dart';
import 'package:iot_attendance_system/blocs/participants_actions/participants_actions_cubit.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/models/create_participant.dart';
import 'package:iot_attendance_system/models/participant.dart';
import 'package:iot_attendance_system/utils/context_extensions.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/utils/validation_builder.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';
import 'package:iot_attendance_system/view/widgets/app_date_picker.dart';
import 'package:iot_attendance_system/view/widgets/app_header.dart';
import 'package:iot_attendance_system/view/widgets/app_text_field.dart';
import 'package:iot_attendance_system/view/widgets/app_drop_dropdown.dart';

class AddParticipantScreen extends StatefulWidget {
  final String? sessionId;
  const AddParticipantScreen(
      {Key? key, @QueryParam('session_id') required this.sessionId})
      : super(key: key);

  @override
  State<AddParticipantScreen> createState() => _AddParticipantScreenState();
}

class _AddParticipantScreenState extends State<AddParticipantScreen> {
  final _formKey = GlobalKey<FormState>();
  CreateParticipant pCreate = CreateParticipant.empty();
  late ParticipantsActionsCubit _participantsActionsC;
  Gender gender = Gender.male;

  @override
  void initState() {
    _participantsActionsC = BlocProvider.of<ParticipantsActionsCubit>(context);
    pCreate = pCreate.copyWith(sessionId: widget.sessionId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppHeader(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 610),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Participant Information',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      labelText: 'Name',
                      onChanged: (v) => pCreate = pCreate.copyWith(name: v),
                      validator: ValidationBuilder().required().build(),
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      labelText: 'Email',
                      onChanged: (v) => pCreate = pCreate.copyWith(email: v),
                      validator: ValidationBuilder().required().email().build(),
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      labelText: 'Phone Number',
                      prefixWidget: const Text('+964'),
                      onChanged: (v) =>
                          pCreate = pCreate.copyWith(phone: '0$v'),
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      validator: ValidationBuilder().required().build(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        AppDropDown<Gender>(
                          onValueChanged: (v) =>
                              pCreate = pCreate.copyWith(gender: v),
                          selectedValue: pCreate.gender,
                          title: 'Gender',
                          values: Gender.values,
                          translateFunction: (v) => v.name,
                        ),
                        const SizedBox(width: 10),
                        AppDatePicker(
                            selectedDate: pCreate.dateOfBirth,
                            onDateSelected: (d) => setState(() =>
                                pCreate = pCreate.copyWith(dateOfBirth: d)))
                      ],
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      labelText: 'Nationality',
                      validator: ValidationBuilder().required().build(),
                      onChanged: (v) =>
                          pCreate = pCreate.copyWith(nationality: v),
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      labelText: 'Governance',
                      validator: ValidationBuilder().required().build(),
                      onChanged: (v) =>
                          pCreate = pCreate.copyWith(governorate: v),
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      labelText: 'Field Of Study',
                      onChanged: (v) =>
                          pCreate = pCreate.copyWith(fieldOfStudy: v),
                    ),
                    const SizedBox(height: 10),
                    AppTextField(
                      labelText: 'Educational Background',
                      onChanged: (v) =>
                          pCreate = pCreate.copyWith(educationalBackground: v),
                    ),
                    const SizedBox(height: 10),
                    BlocBuilder<ParticipantsActionsCubit, BlocsState>(
                      builder: (context, state) {
                        return AppButton(
                          isLoading: state.maybeWhen(
                              orElse: () => false, loading: () => true),
                          onPressed: () async {
                            if (!_formKey.currentState!.validate()) return;

                            await _participantsActionsC
                                .createParticipant(pCreate);
                            _participantsActionsC.state.whenOrNull(
                              data: (_) {
                                context.showSnackBar('Participant Created');
                                AutoRouter.of(context)
                                    .push(const MyHomeRoute());
                              },
                              failure: (e) => context.showSnackBar(
                                  e.readableMessage,
                                  isError: true),
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
      ),
    );
  }
}
