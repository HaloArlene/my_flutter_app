import 'package:flutter/material.dart';

class IconsTestState extends State {
  @override
  Widget build(BuildContext context) {
    Widget titleText = new Text(
      'Strawbary Pavlova',
      style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
    );

    Widget subTitle = new Text('Subtitle');

    Widget packedRow = new Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.black),
        new Icon(Icons.star, color: Colors.black),
      ],
    );

    Widget ratings = new Container(
      padding: new EdgeInsets.all(20.0),
      child:
          new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        packedRow,
        new Text(
          '170 reviews',
          style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20.0),
        )
      ]),
    );

    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Column(children: [
                  new Icon(Icons.kitchen, color: Colors.green[500]),
                  new Text('PREP:'),
                  new Text('25 min')
                ]),
                new Column(children: [
                  new Icon(Icons.timer, color: Colors.green[500]),
                  new Text('COOK'),
                  new Text('1 hr')
                ]),
                new Column(children: [
                  new Icon(Icons.restaurant, color: Colors.green[500]),
                  new Text('FEEDS'),
                  new Text('4-6')
                ])
              ],
            )));

    var leftColumn = new Container(
      padding: new EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
      child: new Column(children: [
        titleText,
        subTitle,
        ratings,
        iconList
      ]),
    );

    Widget mainImage = new Image.asset('images/test1.jpg');

    return new Scaffold(
      appBar: new AppBar(title: new Text('Start Up')),
      body: new Center(child: new Container(
        margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
        height: 600.0,
        child: new Card(child: new ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [new Container(width: 440.0, child: leftColumn), mainImage]
        ),),
      )),
    );
  }
}

class IconsTestWidget extends StatefulWidget {
  @override
  createState() => new IconsTestState();
}
