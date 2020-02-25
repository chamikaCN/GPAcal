import 'package:flutter/material.dart';

import './module_adder.dart';

class SGPACalculator extends StatefulWidget {
  final List<double> total = [];

  @override
  State<StatefulWidget> createState() {
    return _SGPACalculatorState();
  }
}

class _SGPACalculatorState extends State<SGPACalculator> {
  double sgpa = 0.0, totCred = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ModuleAdder(widget.total, totCred),
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
        Text(totCred.toString()),
        Text('your SGPA is ' + sgpa.toString()),
      ],
    );
  }
}
