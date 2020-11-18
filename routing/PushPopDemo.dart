import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Halaman satu"),
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondScreen()));
        },
          child: Text("Pindah ke halaman dua"),),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  static String tag = "second_widget";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Halaman dua"),
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.pop(context);
        },
          child: Text("Kembali ke halaman satu"),),
      ),
    );
  }
}