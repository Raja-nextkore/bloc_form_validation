import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool? isPasswordField;
  final ValueChanged<String>? onChange;
  const InputField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPasswordField = false,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPasswordField!,
      onChanged: onChange,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
