import 'package:flutter/material.dart';
import 'package:lake_description/screens/lake_desc_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lake Description',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LakeDescScreen(),
    );
  }
}
