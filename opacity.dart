import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class Opa_ci_ty extends StatefulWidget {
  @override
  _Opa_ci_tyState createState() => _Opa_ci_tyState();
}

class _Opa_ci_tyState extends State<Opa_ci_ty> {
  double d = 0.5;
  @override
  Widget build(BuildContext context) {
 return Row(
   children: <Widget>[
     Opacity(
      opacity: 0.4,
      child: Container(
        color: Colors.green,
        height: 100,
        width: 100,
      )),
      AnimatedOpacity(
        duration: Duration(seconds: 1),
        opacity: d == 0.5 ? 1 : 0.5,
        child: Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ))
   ],
 );
  }
}

/*    return Opacity(
      opacity: 0.0,
      child: Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
    ); 
    
    [
      Image.asset('assets/download.jpg', width:70, height: 30),
      AnimatedOpacity(
        duration: Duration(seconds: 6),
        opacity: inters,
        child: Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      )
    ]
    */
