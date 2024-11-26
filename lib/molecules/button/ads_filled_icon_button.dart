import 'package:atomic_design_system/foundations/ads_foundation_sizes.dart';
import 'package:flutter/material.dart';

class AdsFilledIconButton extends StatelessWidget {
  final void Function() onPressedCallback;
  final String text;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final FocusNode? focusNode;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;
  final Widget? widget;

  const AdsFilledIconButton({
    super.key,
    required this.onPressedCallback,
    required this.text,
    this.buttonStyle,
    this.textStyle,
    this.focusNode,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressedCallback,
      style: buttonStyle,
      focusNode: focusNode,
      label: Text(
        text,
        style: textStyle,
      ),
      icon: widget ??
          Icon(
            icon,
            size: iconSize ?? ADSFoundationSizes.sizeIconMedium,
            color: iconColor,
          ),
    );
  }
}
