import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
            transitionDuration: const Duration(seconds: 1),
            pageBuilder: (BuildContext context, Animation<double> animation1,
                Animation<double> animation2) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              return _getFadeTransition(animation1, child);
            });

  static FadeTransition _getFadeTransition(
      Animation<double> animation, Widget child) {
    return FadeTransition(
      opacity: Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn)),
      child: child,
    );
  }
}


class Func extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return null;
  }

  void future(){
    Future.wait([
      Future.delayed(new Duration(seconds: 2), (){
        return "hello";
      }),
      Future.delayed(new Duration(seconds: 2), (){
        return "hello";
      }),]
    ).then((result){
      
    }).whenComplete((){

    });
  }

}
