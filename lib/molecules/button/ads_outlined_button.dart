import 'package:flutter/material.dart';

class AdsOutlinedButton extends StatelessWidget {
  final void Function()? onPressedCallback;
  final String text;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final FocusNode? focusNode;

  const AdsOutlinedButton({
    super.key,
    required this.onPressedCallback,
    required this.text,
    this.buttonStyle,
    this.textStyle,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressedCallback,
      style: buttonStyle,
      focusNode: focusNode,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
