import 'package:flutter/material.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    Key? key,
    required this.onRefresh,
    required this.errorMessage,
  }) : super(key: key);

  final VoidCallback onRefresh;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(errorMessage),
          const SizedBox(height: 10),
          AppButton(
            backroundColor: Colors.black,
            onPressed: () => onRefresh(),
            text: Strings.retry,
          )
        ],
      ),
    );
  }
}
