import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  const TextFieldAuth({
    super.key,
    required this.controller,
    required this.text,
    required this.validate,
    this.isPassword = false,
  });

  final TextEditingController controller;
  final String text;
  final bool isPassword;
  //Function(String) validate;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ? true : false,
      controller: controller,
      validator: validate,
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
