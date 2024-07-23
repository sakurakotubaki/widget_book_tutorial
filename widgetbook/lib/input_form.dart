import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app
import 'package:widget_book_tutorial/input_form.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs

@widgetbook.UseCase(name: 'Default', type: InputForm)
Widget buildCoolButtonUseCase(BuildContext context) {
  return InputForm();
}
