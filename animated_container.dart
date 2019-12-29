import 'package:flutter/material.dart';

class Animated_container extends StatefulWidget {
  @override
  _Animated_containerState createState() => _Animated_containerState();
}

class _Animated_containerState extends State<Animated_container> {
  double _height = 100;
  double _width = 100;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(seconds: 1),
          child: Container(
              color: Colors.red, height: this._height, width: this._width),
        ),
        RaisedButton.icon(
          icon: Icon(Icons.update),
          label: Text('Change random property'),
          onPressed: () => setState(
                () {
                  // Generate a random width and height.
                  if (_width == 100 && _height == 100) {
                    _width = 200;
                    _height = 200;
                  } else {
                    _width = 100;
                    _height = 100;
                  }
                },
              ),
        ),
      ],
    );
  }
}
