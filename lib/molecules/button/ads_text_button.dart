import 'package:flutter/material.dart';

class AdsTextButton extends StatelessWidget {
  final void Function()? onPressedCallback;
  final String text;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final TextAlign? textAlign;

  const AdsTextButton({
    super.key,
    this.onPressedCallback,
    required this.text,
    this.textStyle,
    this.buttonStyle,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedCallback,
      style: buttonStyle,
      child: Text(
        text,
        style: textStyle,
        textAlign: textAlign ?? TextAlign.start,
      ),
    );
  }
}
