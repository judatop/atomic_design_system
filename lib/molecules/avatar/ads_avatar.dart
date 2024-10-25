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
    return imageUrl != null
        ? CircleAvatar(
            backgroundImage: NetworkImage(imageUrl!),
            radius: 50,
          )
        : CircleAvatar(
            radius: 50,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: const Icon(
              Icons.person_2,
              size: 50,
              color: Colors.white,
            ),
          );
  }
}
