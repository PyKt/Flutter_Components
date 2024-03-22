import 'package:flutter/material.dart';

class TextFormModified extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const TextFormModified({
    super.key,
    this.helperText,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
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
        debugPrint(
            'value: $value'); //en producción usamos debugPrint en lugar de print
      },
      validator: (value) {
        if (value == null) return "Campo obligatorio ";
        return value.length < 4 ? 'Al menos 4 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
