import 'package:flutter/material.dart';
import 'package:flutter_widget_learning/route_anim/custom_router.dart';

class RAApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter RouteAnimator',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text('First Page', style: TextStyle(color: Colors.white70),),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(
              CustomRoute(SecondPage())
              /*MaterialPageRoute(builder: (BuildContext context){
                return SecondPage();
              })*/
            );
          },
        ),
      ),
    );
  }

}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('Second Page', style: TextStyle(color: Colors.white70),),
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
           Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

}