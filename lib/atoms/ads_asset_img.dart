import 'package:flutter/material.dart';

class ADSAssetImg extends StatelessWidget {
  final String path;
  final double widthImage;
  final double heightImage;

  const ADSAssetImg({
    super.key,
    required this.path,
    required this.widthImage,
    required this.heightImage,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: widthImage,
      height: heightImage,
    );
  }
}
