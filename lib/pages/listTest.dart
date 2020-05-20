import 'package:flutter/material.dart';

class ListTestWidget extends StatefulWidget {
  @override
  createState() => new ListTestState();
}

class ListTestState extends State {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      new ListTile(
          title: new Text('CineArts at the Empire',
              style:
                  new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
          subtitle: new Text('85 W Protal Ave'),
          leading: new Icon(Icons.theaters, color: Colors.blue[500])),
      new ListTile(
          title: new Text(
            'The Castro Theater',
            style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
          ),
          subtitle: new Text('420 Castro St'),
          leading: new Icon(Icons.theaters, color: Colors.blue[500]))
    ];

    return new Scaffold(
        body: new Center(
            child: new ListView(
      children: list,
    )));
  }
}
