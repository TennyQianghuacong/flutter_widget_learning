import 'package:flutter/material.dart';
import 'package:flutter_widget_learning/lab/stateful/stateful_test.dart';
import 'package:flutter_widget_learning/route_anim/route_anim.dart';
import 'package:flutter_widget_learning/text/text_lab.dart';
import 'bottom_navigation/bottom_navigation_widget.dart';
import 'irregular_bottom_navigation/irregular_bottom_navigation_widget.dart';

//void main() => runApp(RAApp());
void main(){
  runApp(TextLabApp());
}

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
