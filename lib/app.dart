import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'src/models/image_model.dart';
import './src/widgets/image_list.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 1;

  List<ImageModel> images = [];

  Future<void> fetchImage() async {
    count++;
    var response = await get(
        'https://jsonplaceholder.typicode.com/photos/{$count}' as Uri);
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: ImageList(images),
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
