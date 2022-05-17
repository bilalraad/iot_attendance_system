import 'package:flutter/material.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';

class ConfirmDialog extends StatelessWidget {
  final VoidCallback onOkay;
  final String? title;
  const ConfirmDialog({Key? key, required this.onOkay, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title ?? Strings.confirmOperation),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        AppButton(
          text: Strings.optionConfirm,
          onPressed: () {
            onOkay();
            Navigator.of(context).pop();
          },
          width: 100,
        ),
        AppButton(
          text: Strings.optionCancel,
          buttonType: ButtonType.secondary,
          onPressed: Navigator.of(context).pop,
          width: 100,
        )
      ],
    );
  }
}
