import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final opciones = const ['Guardado', 'Compras', 'Ventas'];
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My ListView',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.separated(
        itemCount: opciones.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(
              style: const TextStyle(fontWeight: FontWeight.bold), opciones[i]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.purpleAccent,
          ),
          onTap: () {
            final mylist = opciones[i];
            print(mylist);
            Navigator.pushNamed(context, 'HomeScreen');

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
        backgroundColor: Colors.purple,
        icon: const Icon(
          Icons.ios_share_sharp,
        ),
        label: const Text(
            style: TextStyle(fontWeight: FontWeight.bold), "Hola mundo"),
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