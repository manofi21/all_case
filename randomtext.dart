import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class RandomText extends StatelessWidget {
  //automaticly random
  static final textRan  = generateNoun().take(50).toList();//all;
  //final randm = new List<String>.generate(50, (i) => textRan[i]);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return ListTile(
            title: Text('${textRan[index]}'),
          );
        }
      )
    );
  }
}