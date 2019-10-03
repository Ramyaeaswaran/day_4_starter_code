import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenum =1;
  int rightdicenum=6;
  void modifyleft(){
    setState(() {
        leftdicenum= 1+ Random().nextInt(6);
        rightdicenum= 1+ Random().nextInt(6);
    }
      );
  }
 /* void modifyright(){
    print('right');
    setState(() {
      rightdicenum= 1+ Random().nextInt(6);
      leftdicenum= 1+ Random().nextInt(6);
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Roll the Dice'),
        backgroundColor: Colors.red,
      ),
      body: Center(

        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image(
                  image: AssetImage('assets/dice$leftdicenum.png'),
                 // width: 80,
                ),
                onPressed: modifyleft,
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image(
                  image: AssetImage('assets/dice$rightdicenum.png'),
                //  width: 80,
                ),
                onPressed: modifyleft,
              ),
            ),
          ],
        ),
         ),
      floatingActionButton: FloatingActionButton(
        onPressed: modifyleft,
        child: Icon(Icons.refresh),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}





