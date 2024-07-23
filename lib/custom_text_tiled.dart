import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    required this.width,
    required this.height,
    required this.email,
    required this.labelText,
    super.key,
  });

  final double width;
  final double height;
  final TextEditingController email;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          controller: email,
          decoration: InputDecoration(
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}