import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text('8Ball'),
            backgroundColor: Colors.teal.shade900,
          ),
          body: BallPage(),
        ),
      ),
    );
class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballface=1;
  void changeBallFace(){
    setState(() {
      ballface=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
              child: FlatButton(
                onPressed: (){
                  changeBallFace();
                },
                  child: Image.asset('images/ball$ballface.png'),
              ),
          ),
        ),
      ],
    );
  }
}

