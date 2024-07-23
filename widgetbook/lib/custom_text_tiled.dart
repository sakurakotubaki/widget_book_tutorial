import 'package:flutter/material.dart';
import 'package:widget_book_tutorial/custom_text_tiled.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app

// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter run

@widgetbook.UseCase(name: 'Default', type: CustomTextFiled)
Widget buildCoolButtonUseCase(BuildContext context) {
  return CustomTextFiled(
    width: double.infinity,
    height: 50,
    email: TextEditingController(),
    labelText: 'Email',
  );
}
