import 'package:flutter/material.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/utils/app_utils.dart';

class AppDatePicker extends StatelessWidget {
  const AppDatePicker({
    Key? key,
    required this.selectedDate,
    required this.onDateSelected,
  }) : super(key: key);

  final DateTime? selectedDate;
  final Function(DateTime?) onDateSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
                context: context,
                initialDate: selectedDate ?? DateTime.now(),
                firstDate: DateTime(1800),
                lastDate: DateTime(DateTime.now().year + 3))
            .then(onDateSelected);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: 300,
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_month_rounded,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(Strings.date),
                Text(
                  selectedDate.format() ?? Strings.selectDate,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
