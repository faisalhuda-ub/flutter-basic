import 'package:flutter/material.dart';
import 'package:intro_app/layout_widget/TabBarDemo.dart';

class MaterialDemo extends StatefulWidget {
  @override
  _MaterialDemoState createState() => _MaterialDemoState();
}

class _MaterialDemoState extends State<MaterialDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // mementukan teks yang ada di bagian atas aplikasi
        title: Text('Demo penggunaan scaffold'),
      ),
      body: Center(
        child: Text('Menerapkan beberapa widget yang didukung pada material widget'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Cek tekan',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            // deklarasi untuk avatar user beserta deskripsinya
            UserAccountsDrawerHeader(
              accountName: Text('FILKOM UB'),
              accountEmail: Text('filkom@ub.ac.id'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('ABC'),
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.mail),
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
            ListTile(
                title: Text('Info'),
                leading: Icon(Icons.info)
            )
          ],
        ),
      ),
    );
  }
}

