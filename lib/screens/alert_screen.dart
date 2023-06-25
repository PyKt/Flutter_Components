import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            title: const Text("Alerta!!!"),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Mensaje de alerta"),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 90,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "HomeScreen");
              },
              child: const Text("Home"))
        ],
        centerTitle: true,
        title: const Text("Alert Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            displayDialog(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              "Mostrar Alerta",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }
}
