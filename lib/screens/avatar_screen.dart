import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Avatar"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: const CircleAvatar(
              backgroundColor: Colors.lightGreen,
              backgroundImage: NetworkImage(
                  'https://cdn-0.somosmamas.com.ar/wp-content/uploads/2020/11/Cuidado-de-la-piel-trucos-990x684.jpg'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 130,
          backgroundColor: Colors.blueGrey,
          backgroundImage: NetworkImage(
              'https://static.comunicae.com/photos/notas/1195361/1525692362_Cuida_tu_piel.jpg'),
        ),
      ),
    );
  }
}
