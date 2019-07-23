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

class EachView extends StatefulWidget{

  final String title;
  final Color color;

  const EachView({Key key, this.title, this.color}) : super(key: key);

  @override
  State<EachView> createState() {
    return _EachViewState();
  }

}

class _EachViewState extends State<EachView>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
        backgroundColor: widget.color,
      ),
      body: Center(
        child: Text(
          widget.title, style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

}
