import 'package:flutter/material.dart';

class AdsHeadline extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const AdsHeadline({
    super.key,
    required this.text,
    this.textStyle,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: textStyle ?? textTheme.headlineMedium,
    );
  }
}
