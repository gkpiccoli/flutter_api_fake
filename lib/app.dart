import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$count'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(title: const Text('Image Generator')),
      ),
    );
  }
}
