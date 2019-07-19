import 'package:flutter/material.dart';

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

class _IrregularBottomNavigationWidgetState
    extends State<IrregularBottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white70,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
