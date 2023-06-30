import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Text Input"),
          actions: [
            IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.pushNamed(context, 'HomeScreen');
              },
              icon: const Icon(Icons.home),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Solo Nombre',
                    labelText: "Nombre",
                    helperText: "Ni letras ni puntos",
                    suffixIcon: Icon(Icons.people_alt),
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
                ),
              ],
            ),
          ),
        ));
  }
}
