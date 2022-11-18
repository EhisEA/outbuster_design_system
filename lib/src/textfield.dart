import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.enabled = true,
    this.isPassword = false,
    this.backgroundColor,
    this.maxLines = 1,
    this.focusNode,
    this.maxLength,
    this.prefixIcon,
    this.contentPadding,
    this.hintText,
    this.onChanged,
    this.hintStyle,
    this.constraints,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
  })  : title = null,
        titleStyle = null;

  const AppTextField.title({
    super.key,
    this.enabled = true,
    this.isPassword = false,
    this.backgroundColor,
    this.maxLines = 1,
    this.focusNode,
    this.maxLength,
    this.prefixIcon,
    this.contentPadding,
    this.hintText,
    this.hintStyle,
    this.onChanged,
    this.title,
    this.titleStyle,
    this.constraints,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
  });

  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Color? backgroundColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final int? maxLength;
  final bool enabled;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final EdgeInsets? contentPadding;
  final String? title;
  final TextStyle? titleStyle;
  final BoxConstraints? constraints;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;

  @override
  State<AppTextField> createState() => _DSTextFieldState();
}

class _DSTextFieldState extends State<AppTextField> {
  bool obscureText = true;
  _changePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title!,
            style: widget.titleStyle ??
                AppTextStyle.h6.copyWith(
                    // color: AppColor.grey.shade700,
                    ),
          ),
          Gap.s8,
        ],
        Container(
          constraints: widget.constraints,
          child: TextFormField(
            enabled: widget.enabled,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            onChanged: widget.onChanged,
            validator: widget.validator,
            maxLength: widget.maxLength,
            maxLines: widget.maxLines,
            textCapitalization: widget.textCapitalization,
            inputFormatters: widget.inputFormatters,
            focusNode: widget.focusNode,
            obscureText: widget.isPassword ? obscureText : false,
            decoration: InputDecoration(
              hintStyle: widget.hintStyle ??
                  AppTextStyle.body2.copyWith(color: AppColor.grey.shade500),
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              contentPadding: widget.contentPadding ??
                  const EdgeInsets.symmetric(
                    horizontal: 26,
                    vertical: 18,
                  ),
              suffixIcon: widget.isPassword
                  ? InkWell(
                      onTap: _changePasswordVisibility,
                      child: Icon(
                        obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    )
                  : null,
              fillColor: widget.backgroundColor,
              filled: widget.backgroundColor != AppColor.grey,
              // colo

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(46),
                borderSide: BorderSide(
                  width: 0.5,
                  color: widget.backgroundColor != null
                      ? Colors.transparent
                      : AppColor.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(46),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.primary,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(46),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.red,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(46),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.red,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
