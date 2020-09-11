import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      theme: ThemeData(
        fontFamily: 'arial',
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
