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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const TextFormModified(
                  hintText: "Nombre",
                  labelText: "Tu nombre",
                  helperText: "Mínimo 3 caracteres",
                  prefixIcon: Icon(Icons.people_alt),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFormModified(
                  hintText: "Apellido",
                  labelText: "Apellido",
                  helperText: "Mínimo 3 caracteres",
                  prefixIcon: Icon(Icons.people_alt),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFormModified(
                  hintText: "Correo Electrónico",
                  labelText: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFormModified(
                  hintText: "Mayúsculas, minúsculas y numero",
                  helperText: "Contraseña",
                  obscureText: true,
                  prefixIcon: Icon(
                    Icons.password_outlined,
                  ),
                ),
                ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text("Guardar"),
                        )),
                    onPressed: () {}),
              ],
            ),
          ),
        ));
  }
}
