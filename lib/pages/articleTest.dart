import 'package:flutter/material.dart';

class ArticleTest extends StatefulWidget {
  @override
  createState() => new ArticleTestState();
}

class ArticleTestState extends State {
  Widget textSection = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Text(
      '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Start Up')),
      body: new ListView(children: [
        new Image.asset('images/test1.jpg',
            width: 600.0, height: 240.0, fit: BoxFit.cover),
        _buildTitleSection(),
        _buildButtonSection(),
        textSection
      ]),
    );
  }

  Column _buildButtonColumn(IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Icon(icon, color: color),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(
                fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }

  Widget _buildButtonSection() {
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Icons.call, 'CALL'),
          _buildButtonColumn(Icons.near_me, 'ROUTE'),
          _buildButtonColumn(Icons.share, 'SHARE')
        ],
      ),
    );
  }

  Widget _buildTitleSection() {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(children: [
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: new Text('Oeschinen Lake Campground',
                  style: new TextStyle(fontWeight: FontWeight.bold)),
            ),
            new Text('Kandersteg, Switzerland',
                style: new TextStyle(color: Colors.grey[500]))
          ],
        )),
        new Icon(Icons.star, color: Colors.red[500]),
        new Text('41')
      ]),
    );
  }
}
