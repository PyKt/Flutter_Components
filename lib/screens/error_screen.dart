import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Error Page"),
      ),
      body: const Center(
        child: Image(
          image: NetworkImage(
              'https://cdn.dribbble.com/users/3512533/screenshots/14168126/media/63e6f331db917433989b7f09f663e8e1.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, 'HomeScreen');
        },
        label: const Icon(Icons.home_filled),
      ),
    );
  }
}
