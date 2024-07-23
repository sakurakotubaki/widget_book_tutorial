import 'package:flutter/material.dart';
import 'package:widget_book_tutorial/custom_text_tiled.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextFiled(
              width: double.infinity,
              height: 50,
              email: email,
              labelText: 'Email',),
            CustomTextFiled(
              width: double.infinity,
              height: 50,
              email: password,
              labelText: 'Password',),
            ElevatedButton(
              onPressed: () {
                print('Email: ${email.text}');
                print('Password: ${password.text}');
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}