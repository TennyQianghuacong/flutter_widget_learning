import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final String text;
  final Color appColor;

  const Screen({Key key, this.text, this.appColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        backgroundColor: appColor != null ? appColor : Colors.blue,
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
