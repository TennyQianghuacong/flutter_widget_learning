import 'package:flutter/material.dart';

class CheckLabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckLabApp',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Check Lab',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        body: Center(
          child: SwitchAndCheckBoxTestRoute(),
        ),
      ),
    );
  }
}

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() =>
      new _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态
  bool _selectState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _selectState, //当前状态
          onChanged: (value) {
            //重新构建页面
            setState(() {
              _selectState = value;
            });
          },
        ),
        Checkbox(
          value: !_selectState,
          activeColor: Colors.red, //选中时的颜色
          onChanged: (value) {
            setState(() {
              _selectState = !value;
            });
          },
        )
      ],
    );
  }
}
