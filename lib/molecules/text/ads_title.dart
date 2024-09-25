import 'package:flutter/material.dart';

class AdsTitle extends StatelessWidget {
  final String text;

  const AdsTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      textAlign: TextAlign.center,
      style: textTheme.titleMedium,
    );
  }
}
