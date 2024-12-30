import 'package:atomic_design_system/foundations/ads_foundation_sizes.dart';
import 'package:flutter/material.dart';

class AdsFilledRoundIconButton extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressedCallback;
  final Color? backgroundColor;
  final ButtonStyle? buttonStyle;

  const AdsFilledRoundIconButton({
    super.key,
    required this.icon,
    this.onPressedCallback,
    this.backgroundColor,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: onPressedCallback,
      icon: icon,
      style: buttonStyle ??
          ButtonStyle(
            minimumSize: WidgetStateProperty.all(Size.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: WidgetStatePropertyAll(EdgeInsets.all(screenWidth * 0.02)),
            backgroundColor: WidgetStatePropertyAll(
              backgroundColor ?? Theme.of(context).colorScheme.surface,
            ),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
              ),
            ),
          ),
    );
  }
}
