import 'package:flutter/material.dart';

class W_rap extends StatefulWidget {
  @override
  _W_rapState createState() => _W_rapState();
}

class _W_rapState extends State<W_rap> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        Container(
          color: Colors.green,
          height: 100,
          width: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
        Container(
          color: Colors.green,
          height: 100,
          width: 100,
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        Container(
          color: Colors.orange,
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}