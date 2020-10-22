import 'package:flutter/material.dart';
import 'package:intro_app/layout_widget/TabBarDemo.dart';

import 'basic_widget/TextDemo.dart';
import 'layout_widget/CardWidget.dart';
import 'layout_widget/MaterialDemo.dart';
import 'layout_widget/TableWidget.dart';
import 'layout_widget/ThemeDemo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /*
  variabel opsi untuk menentukan struktur awal sebelum melakukan pemanggilan
  demo widget, sesuai keterangan berikut
  0 -> memanggil demo widget secara langsung tanpa materialApp widget
  1 -> memanggil demo widget dengan menggunakan materialApp widhet
  2 -> memanggil demo widget dengan menggunakan materialApp dan scaffold widget

  note : untuk demo widget yang sudah ada appBarnya disarankan untuk menggunakan
  opsi 1 atapun 2, karena jika memilih opsi 3 maka appBar akan menumpuk
   */

  int opsi = 2;
  var demo = TextDemo();

  @override
  Widget build(BuildContext context) {
    if (opsi == 0) {
      return demo;
    }
    else if (opsi == 1) {
      return MaterialApp(
        home:  demo
      );
    }
    else if (opsi == 2){
      return MaterialApp(
        home:  Scaffold(
          appBar: AppBar(
            title: Text("Demo widget"),
          ),
          body: demo,
        ),
      );
    }
  }
}

