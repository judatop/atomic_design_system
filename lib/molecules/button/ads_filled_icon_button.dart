import 'package:atomic_design_system/foundations/ads_foundation_sizes.dart';
import 'package:atomic_design_system/foundations/ads_foundations_colors.dart';
import 'package:flutter/material.dart';

class AdsFilledIconButton extends StatelessWidget {
  final void Function() onPressedCallback;
  final String text;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final FocusNode? focusNode;
  final IconData icon;
  final double? iconSize;
  final Color? iconColor;

  const AdsFilledIconButton({
    super.key,
    required this.onPressedCallback,
    required this.text,
    this.buttonStyle,
    this.textStyle,
    this.focusNode,
    required this.icon,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = colorScheme.brightness == Brightness.dark
        ? ADSFoundationsColors.whiteColor
        : ADSFoundationsColors.blackColor;

    return FilledButton.icon(
      onPressed: onPressedCallback,
      style: buttonStyle,
      focusNode: focusNode,
      label: Text(
        text,
        style: textStyle,
      ),
      icon: Icon(
        icon,
        size: iconSize ?? ADSFoundationSizes.sizeIconMedium,
        color: iconColor ?? color,
      ),
    );
  }
}
