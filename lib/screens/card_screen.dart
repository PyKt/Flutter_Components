import 'package:fl_components/themes/my_personal_theme.dart';
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
                Image (image:  AssetImage("nutricionista_analisis.png")),
                ListTile(
                  leading: Icon(
                    Icons.terminal_rounded,
                    color: MyTheme.light,
                  ),
                  
                  title: Text('Unix-like'),
                  subtitle: Text(
                      'A Unix-like operating system is one that behaves in a manner similar to a Unix system, although not necessarily conforming to or being certified to any version of the Single UNIX Specification. A Unix-like application is one that behaves like the corresponding Unix command or shell.'),
                )
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
