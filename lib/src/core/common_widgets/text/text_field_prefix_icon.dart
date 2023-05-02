import 'package:flutter/material.dart';

class TextFieldPrefixIcon extends StatelessWidget {
  const TextFieldPrefixIcon({
    super.key,
    required this.emailController,
    required this.text,
    required this.icon,
    required this.validate,
    this.isPassword = false,
  });

  final TextEditingController emailController;
  final String text;
  final Icon icon;
  final bool isPassword;

  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ? true : false,
      controller: emailController,
      validator: validate,
      decoration: InputDecoration(
        prefixIcon: icon,
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
