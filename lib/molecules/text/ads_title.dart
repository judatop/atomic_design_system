import 'package:flutter/material.dart';

class AdsTitle extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const AdsTitle({
    super.key,
    required this.text,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: textTheme.titleMedium,
    );
  }
}
