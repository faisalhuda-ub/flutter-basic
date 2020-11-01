import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  // variabel untuk menyimpan data berbentuk tanggal dan waktu
  DateTime selectedDate = DateTime.now();

  // Inisialisasi permintaan asyncronus
  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2100)
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo dateTimePicker'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(height: 20.0),
            RaisedButton(
              onPressed: () => {
                _selectedDate(context),
                print(selectedDate.day + selectedDate.month + selectedDate.year )
              },
              child: Text('Pilih tanggal'),
            )
          ],
        ),
      ),
    );
  }
}