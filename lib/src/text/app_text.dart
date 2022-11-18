import 'package:design_system/src/text/textstyle.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final Color? color;
  final bool centered;
  final int? maxLines;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final double? height;
  final TextDecoration? decoration;

  ///
  /// fontSize `28`
  /// fontWeight `600`
  const AppText.h3(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.h3;

  ///
  /// fontSize `24`
  /// fontWeight `600`
  const AppText.h4(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.h4;

  ///
  /// fontSize `22`
  /// fontWeight `600`
  const AppText.h5(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.h5;

  ///
  /// fontSize `18`
  /// fontWeight `500`
  const AppText.h6(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.h6;

  ///
  /// fontSize `16`
  /// fontWeight `400`
  const AppText.body(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.body;

  ///
  /// fontSize `14`
  /// fontWeight `400`
  const AppText.body2(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.body2;

  ///
  /// fontSize `20`
  /// fontWeight `700`
  const AppText.button(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.button;

  ///
  /// fontSize `[fontSize]`
  /// fontWeight `[fontWeight]`
  const AppText.custom(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = const TextStyle();

  ///
  /// fontSize `12`
  /// fontWeight `400`
  const AppText.caption(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.caption;

  ///
  /// fontSize `10`
  /// fontWeight `400`
  const AppText.small(
    this.text, {
    super.key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.height,
    this.centered = false,
    this.textAlign,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.decoration,
  }) : style = AppTextStyle.small;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText || maxLines != null ? maxLines ?? 9999999999 : 1,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : textAlign ?? TextAlign.left,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
        decoration: decoration,
        height: height,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
      ),
    );
  }
}
