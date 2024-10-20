import 'package:flutter/material.dart';

class AdsAvatar extends StatelessWidget {
  final double? customWidthPercentage;
  final String? imageUrl;

  const AdsAvatar({
    super.key,
    this.customWidthPercentage,
    this.imageUrl,
  }) : assert(
          customWidthPercentage == null ||
              (customWidthPercentage >= 0 && customWidthPercentage <= 1),
        );

  Widget getDefaultImg() {
    return const Icon(
      Icons.person,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return CircleAvatar(
      radius: 50,
      backgroundColor: colorScheme.primary,
      child: imageUrl != null
          ? Image.network(
              imageUrl!,
              fit: BoxFit.cover,
            )
          : getDefaultImg(),
    );
  }
}
