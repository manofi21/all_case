import 'package:flutter/material.dart';

class Safe_area extends StatefulWidget {
  @override
  _Safe_areaState createState() => _Safe_areaState();
}

class _Safe_areaState extends State<Safe_area> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: ListView(
            children: List.generate(100, (i)
              => Text("Ini text ") 
            )
          ),
    );
  }
}