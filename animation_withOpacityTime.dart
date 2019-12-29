import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class Op_acity extends StatefulWidget {
  @override
  _Op_acityState createState() => _Op_acityState();
}

class _Op_acityState extends State<Op_acity>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
          animatable: ColorTween(begin: Colors.red, end: Colors.green),
          from: Duration(seconds: 0),
          to: Duration(seconds: 1),
          tag: "color",
        )
        .addAnimatable(
          animatable: ColorTween(begin: Colors.green, end: Colors.yellow),
          from: Duration(seconds: 1),
          to: Duration(seconds: 2),
          tag: "color",
        )
        .addAnimatable(
          animatable: Tween<double>(begin: 100, end: 300),
          from: Duration(seconds: 0),
          to: Duration(seconds: 1),
          tag: "size",
        )
        .addAnimatable(
          animatable: Tween<double>(begin: 1, end: 0),
          from: Duration(seconds: 0),
          to: Duration(seconds: 3),
          tag: "size2",
        )
        .animate(controller);
    controller.forward();
  }

@override
Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset('assets/download.jpg', width:200, height: 100),
      AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget child) {
            return Opacity(
                opacity: sequenceAnimation["size2"].value,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                ));
          }),
    ]);
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
