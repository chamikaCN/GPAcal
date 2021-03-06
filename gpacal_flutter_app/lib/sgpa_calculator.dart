import 'package:flutter/material.dart';

import './module_adder.dart';
import './details_collector.dart';

class SGPACalculator extends StatefulWidget {
  final List<double> total = [];

  @override
  State<StatefulWidget> createState() {
    return _SGPACalculatorState();
  }
}

class _SGPACalculatorState extends State<SGPACalculator> {
  double sgpa = 0.0, totCred = 0.0;

  void _updateValues(double product, double credit) {
    totCred += credit;
    widget.total.add(product);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        DetailsCollector(),
        ModuleAdder(_updateValues),
        RaisedButton(
          onPressed: () {
            setState(() {
              double sum = 0;
              widget.total.forEach((double e) {
                sum += e;
              });
              sgpa = sum / totCred;
            });
            widget.total.clear();
            totCred = 0.0;
          },
          child: Text('Calculate'),
        ),
        Text.rich(TextSpan(text: 'your SGPA is  ', children: <TextSpan>[
          TextSpan(
              text: sgpa.toStringAsFixed(2),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0))
        ])),
      ],
    );
  }
}
