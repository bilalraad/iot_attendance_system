import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double? width;
  final double? height;

  final Widget? icon;
  final Color? textColor;
  final Color? backgroundColor;
  final ButtonType buttonType;
  final bool isLoading;

  const AppButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.buttonType = ButtonType.primary,
      this.width,
      this.height = 50,
      this.textColor,
      this.backgroundColor,
      this.isLoading = false,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPrimary = buttonType == ButtonType.primary;
    final defaultTextColor = isPrimary
        ? Theme.of(context).colorScheme.surface
        : backgroundColor ?? Theme.of(context).colorScheme.primary;

    final buttonBgColor = isPrimary
        ? backgroundColor ?? Theme.of(context).colorScheme.primary
        : Colors.transparent;
    return ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
            primary: buttonBgColor,
            elevation: !isPrimary ? 0 : null,
            shadowColor: !isPrimary ? Colors.transparent : null,
            shape: RoundedRectangleBorder(
                side: isPrimary
                    ? BorderSide.none
                    : BorderSide(
                        width: 2,
                        color: backgroundColor ??
                            Theme.of(context).colorScheme.primary,
                      ),
                borderRadius: BorderRadius.circular(5))),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon ?? const SizedBox.shrink(),
            Container(
              width: width,
              height: height,
              padding: const EdgeInsets.all(3),
              alignment: Alignment.center,
              child: Text(
                text,
                overflow: TextOverflow.clip,
                style: const TextStyle()
                    .copyWith(color: textColor ?? defaultTextColor),
              ),
            ),
            isLoading
                ? const CircularProgressIndicator.adaptive()
                : const SizedBox.shrink(),
          ],
        ));
  }
}
