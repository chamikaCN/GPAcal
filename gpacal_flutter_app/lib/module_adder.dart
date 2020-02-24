import 'package:flutter/material.dart';

class ModuleAdder extends StatefulWidget {
  final Map<String, double> grades = {
    'A+': 4.2,
    'A': 4.0,
    'A-': 3.7,
    'B+': 3.3,
    'B': 3.0,
    'B-': 2.7,
    'C+': 2.5,
    'C': 2.2,
    'C-': 2.0,
    'D': 1.5,
    'I-we': 0.0,
    'I-ca': 0.0,
    'F': 0.0
  };

  final List<double> total = [];

  @override
  State<StatefulWidget> createState() {
    return _ModuleAdderState();
  }
}

class _ModuleAdderState extends State<ModuleAdder> {
  String creditValue = '1.0', grade = 'A+';
  double sgpa = 0.0, totCred = 0.0;

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
            RaisedButton(
                child: Text('Add'),
                onPressed: () {
                  setState(() {
                    totCred += double.parse(creditValue);
                    widget.total
                        .add(double.parse(creditValue) * widget.grades[grade]);
                  });
                }),
          ],
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              double sum = 0;
              widget.total.forEach((double e) {
                sum += e;
              });
              sgpa = sum / totCred;
            });
          },
          child: Text('Calculate'),
        ),
        Text(widget.total.toString()),
        Text('your SGPA is ' + sgpa.toString()),
      ],
    );
  }
}
