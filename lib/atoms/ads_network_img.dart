import 'package:flutter/material.dart';

class ADSNetworkImg extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;

  const ADSNetworkImg({
    super.key,
    required this.url,
    required this.widthImage,
    required this.heightImage,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: widthImage,
      height: heightImage,
    );
  }
}
