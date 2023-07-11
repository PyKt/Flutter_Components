import 'package:flutter/material.dart';

class TextFormModified extends StatelessWidget {
  const TextFormModified({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Solo Nombre',
        labelText: "Nombre",
        helperText: "Ni letras ni puntos",
        prefixIcon: Icon(Icons.people_alt),
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
