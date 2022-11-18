import 'package:design_system/src/text/app_text.dart';
import 'package:design_system/src/utils/color.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.enabled = true,
    this.size,
    this.foregroundColor,
    this.backgroundColor,
    this.fontWeight,
    this.fontSize,
    this.icon,
  })  : isText = false,
        underlineText = false;

  const AppButton.expanded({
    required this.text,
    required this.onPressed,
    super.key,
    this.enabled = true,
    this.foregroundColor,
    this.backgroundColor,
    this.fontWeight,
    this.fontSize,
    this.icon,
  })  : size = const Size(double.infinity, 60),
        isText = false,
        underlineText = false;

  const AppButton.text({
    required this.text,
    required this.onPressed,
    super.key,
    this.enabled = true,
    this.size,
    this.fontSize,
    this.fontWeight,
    this.foregroundColor,
    this.underlineText = false,
    this.icon,
  })  : isText = true,
        backgroundColor = null;

  final bool enabled;
  final bool isText;
  final bool underlineText;
  final Size? size;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Widget? icon;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return isText
        ? TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                return foregroundColor?.withOpacity(.05);
              }),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (!enabled) {
                  return AppColor.grey.shade100;
                }
                return foregroundColor;
              }),
            ),
            onPressed: () {
              if (enabled) {
                onPressed?.call();
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 10),
                ],
                AppText.button(
                  text,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  decoration: underlineText
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
              ],
            ))
        : ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(46),
                ),
              ),
              minimumSize: size != null
                  ? MaterialStateProperty.all(size)
                  : MaterialStateProperty.all(const Size(0, 50)),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (!enabled) {
                  return AppColor.grey.shade100;
                }
                return foregroundColor;
              }),
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (!enabled) {
                  return Colors.transparent;
                }
                return foregroundColor?.withOpacity(.1);
              }),
              shadowColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                return Colors.transparent;
              }),
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (!enabled) {
                    return AppColor.grey.shade50;
                  }
                  return backgroundColor;
                },
              ),
            ),
            onPressed: () {
              if (enabled) {
                onPressed?.call();
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: 10),
                ],
                AppText.button(
                  text,
                  fontSize: fontSize,
                ),
              ],
            ),
          );
  }
}
