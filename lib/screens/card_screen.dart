import 'package:flutter/material.dart';
import '../providers/providers.dart';



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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        children: const [
          PersonalCard1(),
          PersonalCard2(),
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



