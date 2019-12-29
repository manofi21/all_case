import 'package:flutter/material.dart';
import 'animation_withOpacityTime.dart';
import 'appBar_bawah.dart';
import 'drawer_hears.dart';
import 'expanded.dart';
import 'fadetransition.dart';
import 'opacity.dart';
import 'page_View.dart';
import 'pathproviders.dart';
import 'randomtext.dart';
import 'safearea.dart';
import 'slide_animation.dart';
import 'table_data.dart';
import 'tables.dart';
import 'dowpdownbutton.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded examples",
      home: Scaffold(
        body: Container(
          //padding: EdgeInsets.only(bottom: 40,top: 40),
          child:Drop_new())),
    );
  }
}

/*
for pathproviders
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded examples",
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: 40,top: 40),
          child: ForMakeANote(
            storage: Storage(),
          ))),
    );
  }
}
*/
