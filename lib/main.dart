import 'package:flutter/material.dart';
import 'package:flutter_widget_learning/route_anim/route_anim.dart';
import 'bottom_navigation/bottom_navigation_widget.dart';
import 'irregular_bottom_navigation/irregular_bottom_navigation_widget.dart';

void main() => runApp(RAApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Text('hello world'),
        ),
      ),
    );
  }

}
