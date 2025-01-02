import 'package:flutter/material.dart';

class AdsHeadline extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  const AdsHeadline({
    super.key,
    required this.text,
    this.textStyle,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      overflow: overflow,
      style: textStyle ?? textTheme.headlineMedium,
    );
  }
}
