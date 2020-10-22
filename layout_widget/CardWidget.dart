import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album, size: 45,),
            title: Text('The massive'),
            subtitle: Text('Best of 2000'),
          )
        ],
      ),
    );
  }
}

class CardAlbum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 200,
        padding: EdgeInsets.all(10.0),
        child: Card(
          // menentukan border pada card
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          color: Colors.red,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                // deklarasi icon yang digunakan di card
                leading: Icon(Icons.album, size: 60,),
                title: Text('The massive', style: TextStyle(fontSize: 30),),
                subtitle: Text('Best of 2000', style: TextStyle(fontSize: 18),),
              ),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Play'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Pause'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

