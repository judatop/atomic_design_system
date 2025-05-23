import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdsTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? textStyle;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;
  final void Function()? onTapPrefixIcon;
  final double? prefixIconSize;
  final Color? prefixIconColor;
  final IconData? suffixIcon;
  final void Function()? onTapSuffixIcon;
  final double? suffixIconSize;
  final Color? suffixIconColor;
  final bool? obscureText;
  final bool? enableInteractiveSelection;
  final bool? enableSuggestions;
  final bool? autocorrect;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final int? maxLength;
  final int? maxLines;
  final String? initialValue;
  final TextInputType? keyboardType;
  final String? errorText;
  final bool? enabled;
  final void Function()? onEditingComplete;
  final void Function(String)? onSubmitted;
  final String? counterText;

  const AdsTextField({
    super.key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.inputFormatters,
    this.textStyle,
    this.validator,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixIconSize,
    this.onTapPrefixIcon,
    this.suffixIcon,
    this.onTapSuffixIcon,
    this.suffixIconColor,
    this.suffixIconSize,
    this.obscureText,
    this.enableInteractiveSelection,
    this.enableSuggestions,
    this.autocorrect,
    this.textInputAction,
    this.focusNode,
    this.textAlign,
    this.maxLength,
    this.maxLines,
    this.initialValue,
    this.keyboardType,
    this.errorText,
    this.enabled,
    this.onEditingComplete,
    this.onSubmitted,
    this.counterText,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;

    return TextField(
      controller: controller,
      onChanged: (value) {
        onChanged?.call(value);
      },
      inputFormatters: inputFormatters,
      style: textStyle ??
          textTheme.bodyMedium?.copyWith(
            color: brightness == Brightness.light
                ? ADSFoundationsColors.blackColor
                : ADSFoundationsColors.whiteColor,
          ),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? GestureDetector(
                onTap: onTapPrefixIcon,
                child: Icon(
                  prefixIcon,
                  size: prefixIconSize ?? 23,
                ),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? GestureDetector(
                onTap: onTapSuffixIcon,
                child: Icon(
                  suffixIcon,
                  size: suffixIconSize ?? 23,
                ),
              )
            : null,
        errorText: errorText,
        errorMaxLines: 3,
        counterText: counterText ?? '',
      ),
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      enableSuggestions: enableSuggestions ?? true,
      autocorrect: autocorrect ?? true,
      textInputAction: textInputAction,
      focusNode: focusNode,
      textAlign: textAlign ?? TextAlign.start,
      maxLength: maxLength,
      enabled: enabled,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      maxLines: obscureText != null ? 1 : maxLines,
    );
  }
}
