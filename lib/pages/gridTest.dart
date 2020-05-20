import 'package:flutter/material.dart';

class GridTestState extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Grid Test')),
      body: new Center(child: buildGrid()),
    );
  }

  String formatNum(int num) {
    if (num > 9) return num.toString();
    return '0' + num.toString();
  }

  List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(
        count,
        (int index) => new Container(
                child: new Image.asset(
              'images/face_${formatNum(index + 1)}.jpg',
              fit: BoxFit.cover,
            )));
  }

  Widget buildGrid() {
    return new GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(14),
    );
  }
}

class GridTestWidget extends StatefulWidget {
  @override
  createState() => new GridTestState();
}
