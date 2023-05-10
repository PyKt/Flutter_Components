import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.access_time_outlined),
                title: const Text('Cargando...'),
                onTap: () {
                  final ruta = MaterialPageRoute(
                    builder: (context) => const ListViewScreen(),
                  );
                  Navigator.push(context, ruta);
                  //Navigator.pushReplacement(context, ruta); Esto es util para login
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 20),
    );
  }
}
