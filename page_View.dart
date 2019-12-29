import 'package:flutter/material.dart';
import 'expanded.dart';
import 'safearea.dart';
import 'wrap.dart';

class Page_it extends StatelessWidget {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: <Widget>[
        have_it(),
        W_rap(),
        Ex_panded(),
        Safe_area(),
      ],
    );
  }
}

Widget have_it(){
  final controller = PageController(initialPage: 1);
  return PageView(
    scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        W_rap(),
        Ex_panded(),
        Safe_area(),
      ],
  );
}