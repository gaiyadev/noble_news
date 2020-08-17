import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(NewsApp());

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Colors.blue,
      ),
      home: Home(),
    );
  }
}
