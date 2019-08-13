import 'package:flutter/material.dart';

class ButtonLabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Button Lab",
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Button Lab',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        body: Center(
          child: ButtonAssemble(),
        ),
      ),
    );
  }
}

class ButtonAssemble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () {},
        ),
        FlatButton(
          child: Text('FlatButton'),
          onPressed: () {},
        ),
        OutlineButton(
          child: Text('OutLineButton'),
          onPressed: () {},
        ),
        RaisedButton.icon(
          icon: Icon(Icons.send),
          label: Text("RaisedButton"),
          onPressed: () {},
        ),
        FlatButton.icon(
          icon: Icon(Icons.info),
          label: Text('FlatButton'),
          onPressed: () {},
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('OutLineButton'),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
        FlatButton.icon(
          color: Colors.lightGreen,
          icon: Icon(
            Icons.send,
            color: Colors.white,
          ),
          highlightColor: Colors.lightGreen[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.lightGreenAccent,
          label: Text("发送"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () {},
        ),
        RaisedButton.icon(
          color: Colors.lightGreen,
          icon: Icon(
            Icons.send,
            color: Colors.white,
          ),
          highlightColor: Colors.lightGreen[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.lightGreenAccent,
          label: Text("发送"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () {},
        )
      ],
    );
  }
}
