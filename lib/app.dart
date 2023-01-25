import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print('Hi Bastião');
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('Image Generator')),
    );
  }
}
