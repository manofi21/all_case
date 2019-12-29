import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Image_Slide extends StatefulWidget {
  @override
  _Image_SlideState createState() => _Image_SlideState();
}

class _Image_SlideState extends State<Image_Slide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
      height:MediaQuery.of(context).size.height/3 ,
      child: Carousel(
        //boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/banner1.jpg'),
          AssetImage('assets/banner2.jpg'),
          AssetImage('assets/banner4.jpg'),
        ],
        autoplay: true,
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.greenAccent,
      ),
    )
      ],),
    );
  }
}

/*
     Widget image_slide_carouse = Container(
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/banner1.jpg'),
          AssetImage('assets/banner2.jpg'),
          AssetImage('assets/banner3.jpg'),
        ],
        autoplay: true,
        indicatorBgPadding: 1.0,
        dotBgColor: Colors.greenAccent,
      ),
    );
 */