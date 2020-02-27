import 'package:flutter/material.dart';

class DetailsCollector extends StatefulWidget {
  @override
  _DetailsCollectorState createState() => _DetailsCollectorState();
}

class _DetailsCollectorState extends State<DetailsCollector> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('this is testing'),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    // TextFormField(
                    //   decoration: InputDecoration(hintText: 'Semester'),
                    //   keyboardType: TextInputType.number,
                    // )
                  ]),
            ],
          ),
        )
        // TextField(
        // decoration: InputDecoration(
        //   hintText: 'Semester',
        //   icon: Icon(Icons.book),
        // ),
        // keyboardType: TextInputType.number,
        // maxLength: 1,
        // onChanged: (value){},
        // onSubmitted: (value){},
        // autofocus: true,
        // ),

        );
  }
}
