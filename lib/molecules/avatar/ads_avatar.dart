import 'package:atomic_design_system/foundations/ads_foundation_sizes.dart';
import 'package:flutter/material.dart';

double defaultScale = 1.0;

class AdsAvatar extends StatelessWidget {
  final double? iconSize;
  final double? imgScale;
  final String? imageUrl;
  final double? radius;

  const AdsAvatar({
    super.key,
    this.iconSize,
    this.imgScale,
    this.imageUrl,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return imageUrl != null
        ? CircleAvatar(
            backgroundImage: NetworkImage(
              imageUrl!,
              scale: imgScale ?? defaultScale,
            ),
            radius: radius ?? ADSFoundationSizes.radiusAvatar,
          )
        : CircleAvatar(
            radius: radius ?? ADSFoundationSizes.radiusAvatar,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: Icon(
              Icons.person_2,
              size: iconSize ?? ADSFoundationSizes.sizeIconExtraLarge,
              color: Colors.white,
            ),
          );
  }
}
