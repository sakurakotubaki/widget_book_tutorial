import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app
import 'package:widget_book_tutorial/cool_button.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs
// flutter run

@widgetbook.UseCase(name: 'Default', type: CoolButton)
Widget buildCoolButtonUseCase(BuildContext context) {
  return CoolButton(
    buttonColor: Colors.blue,
    buttonTitle: 'Submit',
    textColor: Colors.white,
    fontSize: 16,
    onPressed: () {
      print('Button pressed');
    },
  );
}
