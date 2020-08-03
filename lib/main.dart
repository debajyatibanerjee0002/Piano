// 1
import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(MyApp());
}

// create state less widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return a material app
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      // call the HomePage method
      home: HomePage(),
    );
  }
}
