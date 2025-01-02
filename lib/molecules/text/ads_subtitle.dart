import 'package:flutter/material.dart';

class AdsSubtitle extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  const AdsSubtitle({
    super.key,
    required this.text,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: textTheme.titleMedium?.copyWith(
        fontSize: 17,
      ),
      overflow: overflow,
    );
  }
}
