import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(8.0),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.blue
            ),
            child: Text("Python",style: TextStyle(color:Colors.redAccent,fontSize:25),),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(8.0),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.blue
            ),
            child: Text("Java",style: TextStyle(color:Colors.redAccent,fontSize:25),),
          ),
          Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(8.0),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.blue
            ),
            child: Text("Kotlin",style: TextStyle(color:Colors.redAccent,fontSize:25),),
          )
        ]
    );
  }
}

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(12.0),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.red
            ),
            child: Text("Python",style: TextStyle(color:Colors.yellowAccent,fontSize:20),),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(12.0),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.red
            ),
            child: Text("Kotlin",style: TextStyle(color:Colors.yellowAccent,fontSize:20),),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(12.0),
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.red
            ),
            child: Text("Java",style: TextStyle(color:Colors.yellowAccent,fontSize:20),),
          )
        ]
    );
  }
}
