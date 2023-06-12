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
        children: const [
          PersonalCard1(),
          PersonalCard2(),
          PersonalCard3(),
          PersonalCard4(),
        ],
      ),
    );
  }
}
