import 'package:flutter/material.dart';
import './content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Expense Manager')),
        body: Column(
          children: [
            Content(),
          ],
        ),
      ),
    );
  }
}
