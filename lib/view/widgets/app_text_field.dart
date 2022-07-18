import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final String labelText;
  final IconData? prefixIcon;
  final Widget? prefixWidget;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final int? minLines;
  final Widget? suffixWidget;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final double? width;
  final TextAlign textAlign;

  const AppTextField(
      {Key? key,
      required this.labelText,
      this.hintText,
      this.inputFormatters,
      this.prefixIcon,
      this.initialValue,
      this.onChanged,
      this.validator,
      this.controller,
      this.suffixWidget,
      this.minLines,
      this.textInputAction = TextInputAction.done,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.onFieldSubmitted,
      this.width,
      this.textAlign = TextAlign.start,
      this.enabled = true,
      this.prefixWidget})
      : assert(!(prefixIcon != null && prefixWidget != null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      labelText: labelText,
      icon: prefixIcon != null ? Icon(prefixIcon, size: 20) : prefixWidget,
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Theme.of(context).dividerColor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(10),
      ),
      enabled: enabled,
      suffixIcon: suffixWidget,
    );

    return SizedBox(
      width: width ?? double.infinity,
      child: TextFormField(
        validator: validator,
        controller: controller,
        readOnly: !enabled,
        initialValue: initialValue,
        obscureText: obscureText,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        textAlign: textAlign,
        onFieldSubmitted: onFieldSubmitted,
        textInputAction: textInputAction,
        // style: AppTextStyles.inputStyle(),
        maxLines: minLines ?? 1,
        decoration: inputDecoration,
      ),
    );
  }
}

class AppDropDownFormFeild<T> extends StatelessWidget {
  const AppDropDownFormFeild({
    GlobalKey<FormFieldState>? key,
    required this.lableText,
    required this.items,
    this.dropIcon,
    this.hintText,
    this.icon,
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.width,
    required this.value,
  }) : super(key: key);
  final String? hintText;
  final String lableText;
  final IconData? icon;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final Widget? suffixIcon;
  final double? width;
  final List<DropdownMenuItem<T>>? items;
  final Widget? dropIcon;
  final T? value;

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      labelText: lableText,
      icon: icon != null ? Icon(icon, size: 20) : null,
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Theme.of(context).dividerColor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(10),
      ),
      suffixIcon: suffixIcon,
    );
    return SizedBox(
      width: width ?? double.infinity,
      child: DropdownButtonFormField<T>(
        key: key,
        items: items,
        icon: dropIcon,
        value: value,
        validator: validator,
        onChanged: onChanged,
        decoration: inputDecoration,
      ),
    );
  }
}
