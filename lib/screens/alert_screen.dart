import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  AlertScreen({Key? key}) : super(key: key);
  final List _post = [
    'https://www.ilounge.com/wp-content/uploads/2020/12/m1-mac-mini-hero.jpg',
    'https://www.greenit.ie/wp-content/uploads/2021/06/87033601_9674937468-1024x683.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alert Screen"),
        ),
        body: ListView.builder(
          itemCount: _post.length,
          itemBuilder: (context, index) {
          return Card(
            child: _post[index],
          );
        }
        )
        );
  }
}
