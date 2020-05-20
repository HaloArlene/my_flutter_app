import 'package:flutter/material.dart';
// import 'pages/articleTest.dart';
// import 'pages/imagesTest.dart';
// import 'pages/iconsTest.dart';
// import 'pages/gridTest.dart';
import 'pages/listTest.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(primarySwatch: Colors.blue),
        home: new ListTestWidget()
    );
  }
}
