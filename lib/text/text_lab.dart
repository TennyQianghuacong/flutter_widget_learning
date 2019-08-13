import 'package:flutter/material.dart';

class TextLabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter Text Lab',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Text Lab',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        body: Center(
          child: TextMulti(),
        ),
      ),
    );
  }
}

class TextMulti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Hello world",
          textAlign: TextAlign.center,
        ),
        Text(
          "Hello world",
          style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 19.0,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellowAccent,
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed),
        ),
        Text(
          "Hello world",
          textAlign: TextAlign.center,
          textScaleFactor: 4,
        ),
        Text(
          "Hello world, I'm Tenny. " * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "Hello world, I'm Tenny. " * 6,
          textAlign: TextAlign.center,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(text: "Home:", style: TextStyle(color: Colors.black12)),
          TextSpan(
              text: "www.baidu.com",
              style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted
              ),
          //    recognizer:_TabRecognizer()
          //TODO 在这个位置加入点击识别
          )
        ]))
      ],
    );
  }
}

