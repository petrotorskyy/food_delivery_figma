import 'package:flutter/material.dart';

import '../../validators/form_validator.dart';

class TextFieldAuth extends StatelessWidget {
  TextFieldAuth({
    super.key,
    required this.controller,
    required this.text,
    required this.validate,
    required this.obscureText,
  });

  final TextEditingController controller;
  final String text;
  final bool obscureText;
  Function(String) validate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: FormValidator().validateName,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        labelText: text,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
