import 'package:flutter/material.dart';
import 'package:intro_app/layout_widget/TabBarDemo.dart';

import 'layout_widget/CardWidget.dart';
import 'layout_widget/MaterialDemo.dart';
import 'layout_widget/TableWidget.dart';
import 'layout_widget/ThemeDemo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int opsi = 2;
  var kk = TabBarDemo();

  @override
  Widget build(BuildContext context) {
    if (opsi == 0) {
      return kk;
    }
    else if (opsi == 1) {
      return MaterialApp(
        home:  kk
      );
    }
    else if (opsi == 2){
      return MaterialApp(
        home:  Scaffold(
          appBar: AppBar(
            title: Text("Demo widget"),
          ),
          body: kk,
        ),
      );
    }


  }
}
