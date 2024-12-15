import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final void Function()? onLongPress;

  const AdsCard({
    super.key,
    required this.child,
    this.margin,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      margin: margin ?? EdgeInsets.zero,
      color: colorScheme.surface,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey.withOpacity(.2),
          width: ADSTheme.borderWidth,
        ),
        borderRadius: BorderRadius.circular(
          ADSFoundationSizes.radiusCard,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        splashColor: colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(
          ADSFoundationSizes.radiusCard,
        ),
        child: child,
      ),
    );
  }
}
