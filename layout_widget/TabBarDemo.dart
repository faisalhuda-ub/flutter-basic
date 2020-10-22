import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text('misal : Halaman tab pertama untuk menampilkan data',
            style: TextStyle(fontSize: 32.0),
          )
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('misal : halaman tab kedua untuk mengambil gambar',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Demo tabBar'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
          ],
        ),
      ),
    );
  }
}

class TabBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Demo tabBar'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
          ],
        ),
      ),
    );
  }
}