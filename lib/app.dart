import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void fetchImage() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$count'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            fetchImage;
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(title: const Text('Image Generator')),
      ),
    );
  }
}
