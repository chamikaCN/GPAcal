import 'package:flutter/material.dart';

class ModuleAdder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ModuleAdderState();
  }
}

class _ModuleAdderState extends State<ModuleAdder> {
  String creditValue = '1.0', grade = 'A+';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            DropdownButton<String>(
              value: grade,
              onChanged: (newGrade) {
                setState(() {
                  grade = newGrade;
                });
              },
              items: <String>[
                'A+',
                'A',
                'A-',
                'B+',
                'B',
                'B-',
                'C+',
                'C',
                'C-',
                'D',
                'I-ca',
                'I-we',
                'F'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            RaisedButton(child: Text('Add'), onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
