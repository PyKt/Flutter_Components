import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final opciones = const ['Guardado', 'Compras', 'Ventas'];
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
            final mylist = opciones[i];
            print(mylist);
            Navigator.pushNamed(context, "CardScreen");

            //iniciamos una ruta
            // final homescreenroute =
            //     MaterialPageRoute(builder: (context) => const HomeScreen());
            // Navigator.push(context, homescreenroute);
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