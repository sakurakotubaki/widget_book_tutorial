import 'package:flutter/material.dart';

class CoolButton extends StatelessWidget {
  const CoolButton({
    required this.buttonColor,
    required this.buttonTitle,
    required this.textColor,
    required this.fontSize,
    required this.onPressed,
    super.key
  });

  final Color buttonColor;
  final String buttonTitle;
  final Color textColor;
  final double fontSize;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
      ),
      onPressed: onPressed,
      child: Text(buttonTitle, style: TextStyle(color: textColor, fontSize: fontSize)),
    );
  }
}