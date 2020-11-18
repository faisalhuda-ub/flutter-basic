import 'package:flutter/material.dart';

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