import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void diDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            title: const Text('IOS Alert!!'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Has recibido un mensaje en con el estilo Apple Cupertino"),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(size: 90),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cerrar"))
            ],
          );
        });
  }

  void diDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            title: const Text("Android Alert"),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Este mensaje se muestra si estas utilizando Android"),
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
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "HomeScreen");
            },
            icon: const Icon(
              Icons.home,
              size: 25,
            ),
          ),
        ],
        title: const Text("Alert Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (Platform.isAndroid) {
              diDialogAndroid(context);
            } else if (Platform.isIOS) {
              diDialogIOS(context);
            }
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
