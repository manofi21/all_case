import 'package:flutter/material.dart';

class Fade_it extends StatefulWidget {
  //final Widget child;
  //Fade_it({@required this.child}); 

  @override
  _Fade_itState createState() => _Fade_itState();
}

class _Fade_itState extends State<Fade_it> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: Duration(seconds:2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _animation,
      child: Container(
          color: Colors.green,
          height: 100,
          width: 100,
        ),
    );
  }
}