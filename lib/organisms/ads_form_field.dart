import 'package:flutter/material.dart';

class AdsFormField extends StatelessWidget {
  final String? label;
  final TextStyle? labelStyle;
  final Widget formField;

  const AdsFormField({
    super.key,
    this.label,
    this.labelStyle,
    required this.formField,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Column(
            children: [
              Text(
                label!,
                style: labelStyle ??
                    textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        formField,
      ],
    );
  }
}
