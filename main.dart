import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intro_app/layout_widget/RowDemo.dart';
import 'package:intro_app/layout_widget/TabBarDemo.dart';

import 'basic_widget/TextDemo.dart';
import 'input_widget/DatePickerDemo.dart';
import 'layout_widget/CardWidget.dart';
import 'layout_widget/ContainerDemo.dart';
import 'material/BottomNavbarDemo.dart';
import 'material/MaterialDemo.dart';
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

  int opsi = 1;
  var demo = DatePickerDemo();

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


class ToastDemo extends StatefulWidget {
  @override
  _ToastDemoState createState() => _ToastDemoState();
}

class _ToastDemoState extends State<ToastDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo toast widget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Demo toast widget'),
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: RaisedButton(
                child: Text('Tekan untuk menampilkan toast'),
                onPressed: showToast,
              ),
            ),
          )
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: 'Demo notifikasi toast',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow
    );
  }
}


class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

class DropdownDemo extends StatefulWidget {
  @override
  _DropdownDemoState createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "FILKOM"),
    ListItem(2, "FMIPA"),
    ListItem(3, "FTP"),
    ListItem(4, "FEB")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _itemSelected;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _itemSelected = _dropdownMenuItems[1].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo dropdown"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all()),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    value: _itemSelected,
                    items: _dropdownMenuItems,
                    onChanged: (value) {
                      setState(() {
                        _itemSelected = value;
                      });
                    }),
              ),
            ),
          ),
          Text("Terpilih : ${_itemSelected.name}"),
        ],
      ),
    );
  }
}

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Masukkan nama anda',
              labelText: 'Nama',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Tolong diisi terlebih dahulu';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Masukkan no telepon',
              labelText: 'Telepon',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Tolong diisi terlebih dahulu';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Masukkan tanggal lahir',
              labelText: 'Tanggal lahir',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Tolong diisi terlebih dahulu';
              }
              return null;
            },
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Kirin'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data diproses')));
                  }
                },
              )),
        ],
      ),
    );
  }
}



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
            print('Area kotak telah ditekan');
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


