import 'package:atomic_design_system/foundations/ads_foundation_sizes.dart';
import 'package:atomic_design_system/foundations/ads_foundations_colors.dart';
import 'package:flutter/material.dart';

const double cardElevation = 10;

class AdsCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  const AdsCard({
    super.key,
    required this.child,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      margin: margin ?? EdgeInsets.zero,
      color: colorScheme.surface,
      elevation: cardElevation,
      shadowColor: ADSFoundationsColors.blackColor.withOpacity(0.25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ADSFoundationSizes.radiusCard,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(
          ADSFoundationSizes.radiusCard,
        ),
        child: child,
      ),
    );
  }
}
