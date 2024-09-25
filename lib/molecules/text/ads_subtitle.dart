import 'package:flutter/material.dart';

class AdsSubtitle extends StatelessWidget {
  final String text;

  const AdsSubtitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      textAlign: TextAlign.center,
      style: textTheme.titleMedium?.copyWith(
        fontSize: 17,
      ),
    );
  }
}
