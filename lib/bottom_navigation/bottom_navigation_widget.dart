import 'package:flutter/material.dart';

import 'screen.dart';

class BNApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }

}

class BottomNavigationWidget extends StatefulWidget{

  @override
  State<BottomNavigationWidget> createState() {
    return _BottomNavigationWidgetState();
  }

}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget>{

  final _navigationColor = Colors.redAccent;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
    ..add(Screen(text: 'HOME', appColor: _navigationColor,))
    ..add(Screen(text: 'EMAIL', appColor: _navigationColor))
    ..add(Screen(text: 'PAGES', appColor: _navigationColor))
    ..add(Screen(text: 'AIRPLAY', appColor: _navigationColor));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color: _navigationColor,
            ),
            title:Text(
              'Home',
              style: TextStyle(color: _navigationColor),
            )
          ),
          BottomNavigationBarItem(
              icon:Icon(
                Icons.email,
                color: _navigationColor,
              ),
              title:Text(
                'Email',
                style: TextStyle(color: _navigationColor),
              )
          ),
          BottomNavigationBarItem(
              icon:Icon(
                Icons.pages,
                color: _navigationColor,
              ),
              title:Text(
                'Pages',
                style: TextStyle(color: _navigationColor),
              )
          ),
          BottomNavigationBarItem(
              icon:Icon(
                Icons.airplay,
                color: _navigationColor,
              ),
              title:Text(
                'AirPlay',
                style: TextStyle(color: _navigationColor),
              )
          ),
        ],
      ),
    );
  }

}