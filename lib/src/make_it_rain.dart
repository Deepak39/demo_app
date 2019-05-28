import 'package:flutter/material.dart';

class MakeItRainHome extends StatefulWidget {
  _MakeItRainHomeState createState() => _MakeItRainHomeState();
}

class _MakeItRainHomeState extends State<MakeItRainHome> {

  int _currentMoney = 0;
  Color _textColorOfMoney = Colors.cyan.shade400;

  bool _makeMoney(){
    setState(() {
          _currentMoney = _currentMoney + 100;
          if(_currentMoney >= 1000){
            _textColorOfMoney = Colors.green;
          } else{
            _textColorOfMoney = Colors.cyan.shade400;
          } 
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Make It Rain!",
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
           new Container(
             child: Text(
               "Get Rich!",
               style: new TextStyle(
                 fontWeight: FontWeight.normal,
                 fontSize: 25.0,
                 color: Colors.grey,
               ),
              ),
           ),
           new Padding(
             padding: EdgeInsets.symmetric(vertical: 55.0),
           ),
           new Container(
             child: new Text(
               "\$$_currentMoney",
               style: new TextStyle(
                 color: _textColorOfMoney,
                 fontSize: 40.0,
                 fontWeight: FontWeight.bold,
                ),
              ),
           ),
           new Padding(
             padding: EdgeInsets.symmetric(vertical: 120.0),
           ),
           new FlatButton(
             padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 1.0),
             color: Colors.lightGreen,
             splashColor: Colors.green,             
             onPressed: () => _makeMoney(),
             child: new Text(
              "Let It Rain",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 20.0
              )
            ),
           )
          ],
        ),
      ),
    );
  }
}