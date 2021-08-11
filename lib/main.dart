import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldicenum = 2;
  int rdicenum = 4;
  void changeNumber(){
    ldicenum = Random().nextInt(6)+1;
    rdicenum = Random().nextInt(6)+1; // 1-6
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeNumber();


                  });
                },
                child: Image.asset('images/dice$ldicenum.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeNumber();
                  });
                },
                child: Image.asset('images/dice$rdicenum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
