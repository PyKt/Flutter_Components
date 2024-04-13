import 'package:flutter/material.dart';
import 'package:fl_components/providers/providers.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'fava@gmail.com',
      'passwd': '12323',
      'role': 'Admin',

    };
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
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem( 
                          value: 'Ordinary',
                          child: Text('Ordinary'),
                        )
                      ],
                      onChanged: (values) {
                        print(values);
                        formValues['level'] = values ?? 'User level ';
                      }),

                  const SizedBox(
                    height: 30,),
                    height: 30,
                  ),
                  TextFormModified(
                    hintText: "Nombre",
                    labelText: "Tu nombre",
                    helperText: "Mínimo 3 caracteres",
                    prefixIcon: const Icon(Icons.people_alt),
                    formProperty: 'first_name',
                    formValues: (formValues),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormModified(
                    hintText: "Apellido",
                    labelText: "Apellido",
                    helperText: "Mínimo 3 caracteres",
                    prefixIcon: const Icon(Icons.people_alt),
                    formProperty: 'last_name',
                    formValues: (formValues),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormModified(
                    hintText: "Correo Electrónico",
                    labelText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    helperText: 'Obligatorio uso de @',
                    formValues: (formValues),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormModified(
                    hintText: "Mayúsculas, minúsculas y numero",
                    helperText: "Contraseña",
                    obscureText: true,
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                    ),
                    formProperty: 'passwd',
                    formValues: (formValues),
                  ),



                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text("Guardar"),
                        )),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('formulario inválidos');
                        return;
                      }

                      print(formValues);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
