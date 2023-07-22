import 'package:flutter/material.dart';
import 'package:fl_components/providers/providers.dart';

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
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                TextFormModified(
                  hintText: "Nombre",
                  labelText: "Tu nombre",
                  helperText: "Mínimo 3 caracteres",
                  prefixIcon: Icon(Icons.people_alt),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormModified(
                  hintText: "Apellido",
                  labelText: "Primer apellido",
                  helperText: "Apellido",
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormModified(
                  hintText: "Mayúsculas, minúsculas y numero",
                  helperText: "Contraseña",
                  prefixIcon: Icon(Icons.password_outlined),
                ),
              ],
            ),
          ),
        ));
  }
}
