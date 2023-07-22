import 'package:flutter/material.dart';

class TextFormModified extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Icon? prefixIcon;

  const TextFormModified({
    this.helperText,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        print('value: $value');
      },
      validator: (value) {
        if (value == null) return "Campo obligatorio ";
        return value.length < 4 ? 'Al menos 4 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
