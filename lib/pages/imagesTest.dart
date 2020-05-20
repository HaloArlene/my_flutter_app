import 'package:flutter/material.dart';

class ImagesTestState extends State {
  @override
  Widget build(BuildContext context) {
    return _buildExample2();
  }

  Widget _buildImage(String imgName, int flex) {
    return new Expanded(
        flex: flex,
        child: new Image.asset('images/' + imgName,
            width: 100.0, height: 100.0, fit: BoxFit.cover));
  }

  Widget _buildExample1() {
    return new Center(
        child: new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImage('face_01.jpg', 1),
        _buildImage('face_02.jpg', 2),
        _buildImage('face_03.jpg', 1)
      ],
    ));
  }

  Widget _buildExample2() {
    return new Container(
      decoration: new BoxDecoration(color: Colors.black26),
      child: new Column(children: [
        new Row(children: [
          new Expanded(
              child: new Container(
            decoration: new BoxDecoration(
                border: new Border.all(width: 10, color: Colors.black38),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(8.0))),
            margin: const EdgeInsets.all(4.0),
            child: Image.asset('images/face_01.jpg'),
          )),
          new Expanded(
            child: new Container(
              decoration: new BoxDecoration(
                border: new Border.all(width: 10.0, color: Colors.black38),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(8.0)),
              ),
              margin: const EdgeInsets.all(4.0),
              child: new Image.asset('images/face_02.jpg'),
            ),
          ),
        ])
      ]),
    );
  }
}

class ImageTestWidget extends StatefulWidget {
  @override
  createState() => new ImagesTestState();
}
