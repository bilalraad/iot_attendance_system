import 'package:flutter/material.dart';
import 'package:iot_attendance_system/utils/strings.dart';

class AppYearPicker extends StatelessWidget {
  const AppYearPicker({
    Key? key,
    required this.selectedDate,
    required this.onYearSelected,
  }) : super(key: key);

  final DateTime? selectedDate;
  final Function(DateTime?) onYearSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
                context: context,
                initialDatePickerMode: DatePickerMode.year,
                initialDate: selectedDate ?? DateTime.now(),
                firstDate: DateTime(1800),
                lastDate: DateTime.now())
            .then(onYearSelected);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Icon(
              Icons.calendar_month_rounded,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(Strings.graduationYear),
                Text(
                  selectedDate?.year.toString() ?? Strings.graduationYear,
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
