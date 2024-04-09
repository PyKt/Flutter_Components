import 'package:flutter/material.dart';

class TextFormModified extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const TextFormModified({
    super.key,
    this.helperText,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        fillColor: Colors.blueGrey,
      ),
      autofocus: true,
      initialValue: "",
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return "Campo obligatorio ";
        return value.length < 4 ? 'Al menos 4 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
