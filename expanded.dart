import 'package:flutter/material.dart';

class Ex_panded extends StatefulWidget {
  @override
  _Ex_pandedState createState() => _Ex_pandedState();
}

class _Ex_pandedState extends State<Ex_panded> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              height: 100,
              //width: 100,
            )),
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              height: 100,
              //width: 100,
            )),
      ],
    );
  }
}
