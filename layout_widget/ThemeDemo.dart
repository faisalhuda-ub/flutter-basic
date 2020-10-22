import 'package:flutter/material.dart';

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,

        fontFamily: 'Monotype Coursiva',
      ),
      home: MyTheme(),
    );
  }
}

class MyTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo penggunaan tema'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            'Contoh penggunaan style',
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
          Theme.of(context).colorScheme.copyWith(secondary: Colors.deepPurpleAccent),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.build),
        ),
      ),
    );
  }
}