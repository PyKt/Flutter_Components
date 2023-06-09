import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        children: const [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('Mac mini'),
                  subtitle: Text(
                      'El chip M1 de Apple impulsa los nuevos MacBook Air, MacBook Pro y Mac mini'),
                ),
                FadeInImage(
                  fadeInCurve: Curves.bounceIn,
                  placeholder: AssetImage('lib/image/loading-ice.gif'),
                  image: NetworkImage(
                      "https://tidbits.com/uploads/2020/11/M1-Mac-mini.jpg"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text("Hackitosh"),
                  subtitle: Text(
                      "Se conoce como Hackintosh a cualquier máquina no fabricada por Apple capaz de ejecutar el sistema operativo de las computadoras Macintosh: Mac OS."),
                ),
                FadeInImage(
                    fadeInCurve: Curves.bounceIn,
                    placeholder: AssetImage('lib/image/loading-ice.gif'),
                    image: NetworkImage(
                        "https://i.ytimg.com/vi/1PAPB2znnb4/maxresdefault.jpg"))
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, "HomeScreen");
        },
        label: const Text('Home'),
        icon: const Icon(Icons.apple),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
