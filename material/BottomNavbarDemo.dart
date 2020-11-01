import 'package:flutter/material.dart';

class BottomNavbarDemo extends StatefulWidget {
  @override
  _BottomNavbarDemoState createState() => _BottomNavbarDemoState();
}

class _BottomNavbarDemoState extends State<BottomNavbarDemo> {
  int _counter = 0;
  int _selectedIndex = 1;

  void _incrementCounter() {
    setState(() {
      print('Floating action button di-pan');
      _counter++;
    });
  }

  void _touchMenu1() {
    print('Menu 1');
  }

  void _touchMenu2() {
    print('Menu 2');
  }

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo bottomBar'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.adb),
              tooltip: 'Haloo',
              onPressed: _touchMenu1
          ),
          IconButton(
              icon: Icon(Icons.donut_large),
              tooltip: "Halooo",
              onPressed: _touchMenu2)
        ],
      ),
      body: Center(
        child: Container(
          child: GestureDetector(
            onPanDown: (DragDownDetails details) {
              print('Pan down');
              print(details);
            },
            child: Image(
                image:
                NetworkImage("https://pbs.twimg.com/profile_images/603478381435297792/H9sV6J7n.jpg")
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Pesan')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('Profile')),
        ],
        currentIndex: _selectedIndex,
        onTap: itemTapped,
        fixedColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add_box),
      ),
    );
  }
}