import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          // deklarasi icon di tiap line yang muncul
          leading: Icon(Icons.map),
          // deklarasi teks tulisan
          title: Text('Peta'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Panggilan'),
        ),
        ListTile(
          leading: Icon(Icons.contacts),
          title: Text('Kontak'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Pengaturan'),
        ),
      ],
    );
  }
}