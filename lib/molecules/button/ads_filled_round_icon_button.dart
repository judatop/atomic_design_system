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
    return IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: onPressedCallback,
      icon: icon,
      style: buttonStyle ??
          ButtonStyle(
            padding: const MaterialStatePropertyAll(EdgeInsets.zero),
            backgroundColor: MaterialStatePropertyAll(
              backgroundColor ?? Theme.of(context).colorScheme.surface,
            ),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
              ),
            ),
          ),
    );
  }
}
