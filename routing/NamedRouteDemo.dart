import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder> {
  SecondScreen.tag:(context) => SecondScreen(),
  ThirdScreen.tag:(context) => ThirdScreen()
};

class NamedRouteDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo navigasi denga named route",
      home: FirstScreen(),
      routes: routes,
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Halaman satu"),
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.of(context).pushNamed(SecondScreen.tag);
        },
          child: Text("Pindah ke halaman dua"),),
      ),
    );
  }
}

class Student{
  final String name;
  final int age;

  Student({this.name, this.age});
}

class SecondScreen extends StatelessWidget {
  static String tag = "second_page";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Halaman dua"),
      ),
      body: Center(
        child: RaisedButton(onPressed: () {
          Student student = new Student(name: "Budi",age: 17);
          Navigator.pushNamed(context, ThirdScreen.tag, arguments: student);
        },
          child: Text("Menuju halaman tiga"),),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  static String tag = "third_page";
  Student student;

  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context).settings;
    student = settings.arguments;

    return Center(
      child: Text("Mahasiswa dengan nama ${student.name} berumur ${student.age} tahun"),
    );
  }
}
