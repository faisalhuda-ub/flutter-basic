import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Text(
          "Demo text dengan menerapkan textStyle",
          style: TextStyle(
              fontSize: 35,
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              letterSpacing: 8,
              wordSpacing: 20,
              backgroundColor: Colors.lightGreenAccent,
              shadows: [
                Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:10)
              ]
          ),
        )
    );
  }
}
