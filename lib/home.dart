import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Noble News',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Text('latest news here'),
    );
  }
}
