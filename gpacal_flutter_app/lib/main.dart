import 'package:flutter/material.dart';

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
        body: GPAhome(),
      ),
    );
  }
}

class GPAhome extends StatefulWidget {
  @override
  _GPAhomeState createState() => _GPAhomeState();
}

class _GPAhomeState extends State<GPAhome> {
  String creditValue = '1.0';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: creditValue,
              onChanged: (newvalue) {
                setState(() {
                  creditValue = newvalue;
                });
              },
              items: <String>['1.0', '2.0', '3.0', '4.0']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton(items: null, onChanged: null),
            RaisedButton(child: Text('Add'), onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
