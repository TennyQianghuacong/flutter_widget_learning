import 'package:flutter/material.dart';
import 'package:flutter_widget_learning/screen/screen.dart';

class IBNApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter IrregularBottomNavigationBar',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: IrregularBottomNavigationWidget(),
    );
  }
}

class IrregularBottomNavigationWidget extends StatefulWidget {
  @override
  State<IrregularBottomNavigationWidget> createState() {
    return _IrregularBottomNavigationWidgetState();
  }
}

class _IrregularBottomNavigationWidgetState extends State<IrregularBottomNavigationWidget> {
  final _navigationColor = Colors.lightGreen;
  int _currentIndex = 0;
  List<Widget> widgetList = List();

  @override
  void initState() {
    super.initState();
    widgetList
      ..add(EachView(
        title: 'HOME',
        color: _navigationColor,
      ))
      ..add(EachView(
        title: 'AIRPLAY',
        color: _navigationColor,
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachView(title: "ADD", color: Colors.lightGreen,);
          }));
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white70,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: _navigationColor,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white70,
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              color: Colors.white70,
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
