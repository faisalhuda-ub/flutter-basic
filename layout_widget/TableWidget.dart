import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  @override
  _TableDemoState createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(120),
              border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.none,
                  width: 2
              ),
              children: [
                TableRow(
                    children: [
                      Column(children: [Text('NIM', style: TextStyle(fontSize: 20))]),
                      Column(children: [Text('Nama', style: TextStyle(fontSize: 20))]),
                      Column(children: [Text('Prodi', style: TextStyle(fontSize: 20))])
                    ]
                ),
                TableRow(
                    children: [
                      Column(children: [Text('101')]),
                      Column(children: [Text('Anabel')]),
                      Column(children: [Text('Matematika')])
                    ]
                ),
                TableRow(
                    children: [
                      Column(children: [Text('202')]),
                      Column(children: [Text('Bona')]),
                      Column(children: [Text('Fisika')])
                    ]
                ),
                TableRow(
                    children: [
                      Column(children: [Text('303')]),
                      Column(children: [Text('Choki')]),
                      Column(children: [Text('Biologi')])
                    ]
                ),
              ],

            ),
          )
        ],
      ),
    );
  }
}
