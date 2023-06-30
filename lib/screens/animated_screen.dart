import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.greenAccent;
  BorderRadiusGeometry _radiusGeometry = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _radiusGeometry = BorderRadius.circular(random.nextInt(35).toDouble() + 5);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Animated Screen'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'HomeScreen');
              },
              icon: const Icon(Icons.home))
        ],
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInCubic,
          width: _width,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _radiusGeometry),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            changeShape();
          },
          backgroundColor: Colors.greenAccent,
          label: const Icon(Icons.play_arrow_outlined)),
    );
  }
}
