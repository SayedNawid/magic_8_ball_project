import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title:Text("Magic 8 Ball"),
          backgroundColor: Colors.teal.shade700,
        ),
        body: MagicBall(),
      ),
    )
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int CountNumber = 0 ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
           child: TextButton(
            onPressed: (){
              setState(() {
                CountNumber = Random().nextInt(6) ;
              });
            },
            child: Image(image: AssetImage("images/ball$CountNumber.png")),
            ) ,
          ),
        ],
      ),
    );
  }
}

