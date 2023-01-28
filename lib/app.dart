import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void fetchImage() {
    count++;
    get('https://jsonplaceholder.typicode.com/photos/$count' as Uri);
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
