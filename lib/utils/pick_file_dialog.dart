import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iot_attendance_system/models/app_file.dart';
import 'package:iot_attendance_system/utils/enums.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';
import 'package:iot_attendance_system/view/widgets/file_picker_widget.dart';

class PickFileDialog extends StatelessWidget {
  final void Function(AppFile) onSubmit;
  const PickFileDialog({Key? key, required this.onSubmit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppFile? pickedFile;

    return Dialog(
      child: StatefulBuilder(builder: (context, setState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pick the participants excel file',
              style: Theme.of(context).textTheme.headline3,
            ),
            FilePickerWidget(
                pickedFiles: pickedFile != null ? [pickedFile!] : [],
                onFilesPicked: (f) {
                  setState(() {
                    pickedFile = f;
                  });
                },
                filesLimit: 1,
                fileTypes: const [PickerFileTypes.xlsx],
                onFileRemoved: (_) {
                  setState(() {
                    pickedFile = null;
                  });
                }),
            AppButton(
              onPressed: pickedFile == null
                  ? null
                  : () {
                      AutoRouter.of(context).pop();
                      onSubmit(pickedFile!);
                    },
              text: Strings.import,
            ),
          ],
        );
      }),
    );
  }
}
