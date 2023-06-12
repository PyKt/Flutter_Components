import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final opciones = const ['Guardado', 'Compras', 'Ventas'];
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My ListView',
        ),
      ),
      body: ListView.separated(
        itemCount: opciones.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(opciones[i]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          onTap: () {
            //final mylist = opciones[i];
            Navigator.pushNamed(context, "CardScreen");

            //iniciamos una ruta
            // final homeScreenRoute =
            //     MaterialPageRoute(builder: (context) => const HomeScreen());
            // Navigator.push(context, homeScreenRoute);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, 'AlertScreen');
        },
        icon: const Icon(
          Icons.punch_clock,
        ),
        label: const Text("To Alert"),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
//(children: [
        //...opciones
        //  .map((menu) => ListTile(
        //       title: Text(menu),
        //      trailing: const Icon(Icons.arrow_forward_ios),
        //    ))
        //  .toList()
        // ]),