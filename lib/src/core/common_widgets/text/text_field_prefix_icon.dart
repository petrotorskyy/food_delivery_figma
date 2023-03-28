import 'package:flutter/material.dart';

class TextFieldPrefixIcon extends StatelessWidget {
  const TextFieldPrefixIcon({
    super.key,
    required this.emailController,
    required this.text,
    required this.icon,
  });

  final TextEditingController emailController;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      controller: emailController,
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
