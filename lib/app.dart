import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hi Bastião');
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('Flutter Card Deck')),
    );
  }
}
