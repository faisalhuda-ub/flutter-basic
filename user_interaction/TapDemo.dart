import 'package:flutter/material.dart';

class TapDemo extends StatefulWidget {
  @override
  _TapDemoState createState() => _TapDemoState();
}

class _TapDemoState extends State<TapDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Demo gesture'),
        centerTitle: true,
      ),
      body: new Center(child: GestureDetector(
          onTap: () {
            print('Area kotak tombol telah ditekan');
          },
          child: Container(
            height: 60.0,
            width: 120.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(child: Text('Tekan')),
          )
      )),
    );
  }
}