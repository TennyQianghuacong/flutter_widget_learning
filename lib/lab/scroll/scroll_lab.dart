import 'dart:math';

import 'package:flutter/material.dart';

class ScrollLabApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter scroll lab',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: ScrollControllerRoute(),
    );
  }
}


class ScrollControllerRoute extends StatefulWidget{
  @override
  ScrollControllerRouteState createState() {
    return ScrollControllerRouteState();
  }

}

class ScrollControllerRouteState extends State<ScrollControllerRoute> {

  ScrollController _scrollController = ScrollController();
  bool showToTopBtn = false;

  @override
  void initState() {
    //super.initState();
    _scrollController.addListener((){
      if(_scrollController.offset < 1000 && showToTopBtn){
        setState(() {
          showToTopBtn = false;
        });
      }else if(_scrollController.offset > 1000 && !showToTopBtn){
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ScrollController',
          style: TextStyle(color: Colors.white70),
        ),
      ),

      body: Scrollbar(
        child: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0,
            physics: BouncingScrollPhysics(),
            controller: _scrollController,
            itemBuilder:(context, index){
              return ListTile(title: Text("$index"),);
            }
        ),
      ),

      floatingActionButton: !showToTopBtn ? null : FloatingActionButton(
        child: Icon(Icons.arrow_upward, color: Colors.white70,),
        onPressed: (){
          _scrollController.animateTo(0, duration: Duration(seconds: 1), curve: Curves.ease);
        },
      ),
    );
  }

}