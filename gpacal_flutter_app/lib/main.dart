import 'package:flutter/material.dart';

import './module_adder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amberAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GPA cal'),
        ),
        body: ModuleAdder(),
      ),
    );
  }
}
