import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
          // memberikan jarak antara container dengan widget didalamnya
          padding: EdgeInsets.all(35),
          // memberikan jarak antara container dengan widget yang lain
          margin: EdgeInsets.all(20),
          // konfigrasi dekorasi yang akan digunakan
          decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue, width: 4),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              new BoxShadow(color: Colors.blueAccent, offset: new Offset(6.0, 6.0),),
            ],
          ),
          child: Text("Demo penggunaan container",
              style: TextStyle(fontSize: 30)),
    );
  }
}