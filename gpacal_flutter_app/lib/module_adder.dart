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

  final List<double> total;
  double totalCredits;

  ModuleAdder(this.total,this.totalCredits);
  @override
  State<StatefulWidget> createState() {
    return _ModuleAdderState();
  }
}

class _ModuleAdderState extends State<ModuleAdder> {
  String creditValue = '1.0', grade = 'A+';

  @override
  Widget build(BuildContext context) {
    return Row(
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
                widget.totalCredits += double.parse(creditValue);
                widget.total
                    .add(double.parse(creditValue) * widget.grades[grade]);
              });
            }),
            Text(widget.totalCredits.toString()),
      ],
    );
  }
}

//TODO: push the change of the total credits of module adder into parent components