import 'package:flutter/material.dart';

class AppDropDown<T> extends StatelessWidget {
  const AppDropDown({
    Key? key,
    required this.selectedValue,
    required this.onValueChanged,
    required this.values,
    required this.title,
    this.translateFunction,
  }) : super(key: key);

  final T? selectedValue;
  final List<T> values;
  final Function(T?) onValueChanged;
  final String Function(T)? translateFunction;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 300,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 5),
          Text(
            title,
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: 5),
          DropdownButtonFormField<T>(
              icon: const SizedBox.shrink(),
              decoration: const InputDecoration(
                hintText: '',
                border: InputBorder.none,
              ),
              alignment: Alignment.center,
              isExpanded: true,
              items: values
                  .map((e) => DropdownMenuItem<T>(
                      value: e,
                      alignment: Alignment.center,
                      child: Text(
                        translateFunction?.call(e) ?? e.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Theme.of(context).primaryColor),
                      )))
                  .toList(),
              value: selectedValue,
              onChanged: onValueChanged),
        ],
      ),
    );
  }
}
