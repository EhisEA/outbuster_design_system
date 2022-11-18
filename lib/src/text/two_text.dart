import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TwoText extends StatelessWidget {
  const TwoText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.firstTextStyle,
    this.secondTextStyle,
    this.onFirstTap,
    this.onSecondTap,
  });

  final String firstText;
  final String secondText;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final VoidCallback? onFirstTap;
  final VoidCallback? onSecondTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        recognizer: TapGestureRecognizer()..onTap = onFirstTap,
        text: firstText,
        style: firstTextStyle ??
            AppTextStyle.h6
                .copyWith(color: Theme.of(context).textTheme.bodyText1?.color),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onSecondTap,
            text: secondText,
            style: secondTextStyle ??
                AppTextStyle.h6.copyWith(color: Theme.of(context).primaryColor),
          ),
          //use to stop every space after text from being clickable
          const TextSpan(text: " ")
        ],
      ),
    );
  }
}
