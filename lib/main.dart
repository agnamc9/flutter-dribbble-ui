import 'package:flutter/material.dart';
import 'package:flutter_dribbble_ui/pet_adoption/pages/pages.dart';
import 'package:flutter_dribbble_ui/pet_adoption/pages/pet_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PetsPage(),
    );
  }
}
