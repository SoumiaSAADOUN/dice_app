import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text("Dice App"),
        backgroundColor: Colors.indigo,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  var img = 1;
  var img2 = 1;
  void generateRandom(){
    setState(() {
      if (img < 6) {
        // img++;
        img= 1+Random().nextInt(6);
        img2= 1+Random().nextInt(6);
      } else
        img = 1;
    });}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                generateRandom();

                print(img);
              },
              child: Image.asset(
                "images/dice$img.png",
                height: 150,
                width: 150,
              ),
            ),
          ),
          // SizedBox(
          //   width: 30,
          // ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                generateRandom();

                print(img);
              },
              child: Image.asset(
                "images/dice$img2.png",
                height: 150,
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
