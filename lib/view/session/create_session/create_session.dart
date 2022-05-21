import 'package:flutter/material.dart';
import 'package:iot_attendance_system/models/app_file.dart';
import 'package:iot_attendance_system/utils/context_extensions.dart';
import 'package:iot_attendance_system/utils/enums.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/utils/validation_builder.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';
import 'package:iot_attendance_system/view/widgets/app_header.dart';
import 'package:iot_attendance_system/view/widgets/app_text_feild.dart';
import 'package:iot_attendance_system/view/widgets/file_picker_widget.dart';
import 'package:iot_attendance_system/view/widgets/app_date_picker.dart';

class PickExcelScreen extends StatefulWidget {
  const PickExcelScreen({Key? key}) : super(key: key);

  @override
  State<PickExcelScreen> createState() => _PickExcelScreenState();
}

class _PickExcelScreenState extends State<PickExcelScreen> {
  AppFile? pickedFile;

  final _formKey = GlobalKey<FormState>();
  final _sessionNameC = TextEditingController();
  DateTime? _date;

  final pageC = PageController(initialPage: 0);
  final pageTransDuration = const Duration(milliseconds: 300);
  final pageCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppHeader(
          child: PageView(
            controller: pageC,
            children: [
              Column(
                children: [
                  Text(
                    'Upload the participants excel file',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  FilePickerWidget(
                      pickedFiles: pickedFile != null ? [pickedFile!] : [],
                      onFilesPicked: (f) {
                        setState(() {
                          pickedFile = f;
                          _sessionNameC.text =
                              extractSessionNameFromFileName(f.name) ?? '';
                          _date = extractSessionDateFromFileName(f.name);
                        });
                      },
                      filesLimit: 1,
                      fileTypes: const [PickerFileTypes.xlsx],
                      onFileRemoved: (_) {
                        setState(() {
                          pickedFile = null;
                          _sessionNameC.text = '';
                          _date = null;
                        });
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                        onPressed: pickedFile != null
                            ? null
                            : () {
                                pageC.nextPage(
                                    duration: pageTransDuration,
                                    curve: pageCurve);
                              },
                        text: Strings.skipAndNext,
                        buttonType: ButtonType.secondary,
                      ),
                      const SizedBox(width: 10),
                      AppButton(
                        onPressed: pickedFile != null
                            ? () {
                                pageC.nextPage(
                                    duration: pageTransDuration,
                                    curve: pageCurve);
                              }
                            : null,
                        text: Strings.next,
                      ),
                    ],
                  )
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    AppTextField(
                      lableText: 'Session Name',
                      controller: _sessionNameC,
                      validator: ValidationBuilder().required().build(),
                    ),
                    const SizedBox(height: 10),
                    AppDatePicker(
                        selectedDate: _date,
                        onYearSelected: (d) {
                          setState(() => _date = d);
                        }),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButton(
                          onPressed: () {
                            pageC.previousPage(
                                duration: pageTransDuration, curve: pageCurve);
                          },
                          text: Strings.back,
                          buttonType: ButtonType.secondary,
                        ),
                        const SizedBox(width: 10),
                        AppButton(
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) return;
                            if (_date == null) {
                              context.showSnackBar('Please select session date',
                                  isError: true);
                            }
                          },
                          text: Strings.next,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

DateTime? extractSessionDateFromFileName(String name) {
  // 15_4_2020
  final dateRegex = RegExp(r'([0-9]+(_[0-9]+)+)');
  final dateStrings =
      dateRegex.firstMatch(name)?.group(0)?.split('_'); // [15, 4, 2020]
  if (dateStrings != null) {
    return DateTime(int.parse(dateStrings.last), int.parse(dateStrings[1]),
        int.parse(dateStrings.first));
  }
  return null;
}

String? extractSessionNameFromFileName(String name) {
  final dateRegex = RegExp(r'([a-zA-Z]+( [a-zA-Z]+)+)');
  final sessionName = dateRegex.firstMatch(name)?.group(0);
  return sessionName;
}
