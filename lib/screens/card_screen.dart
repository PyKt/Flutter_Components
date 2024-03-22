import 'package:fl_components/providers/card5.dart';
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
          SizedBox(height: 10),
          PersonalCard2(),
          SizedBox(height: 10),
          PersonalCard3(),
          SizedBox(height: 10),
          PersonalCard4(),
          SizedBox(height: 10),
          PersonalCard5(),
        ],
      ),
    );
  }
}
