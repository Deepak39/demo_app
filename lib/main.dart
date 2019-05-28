import "package:flutter/material.dart";
import './src/make_it_rain.dart';
import './src/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  TabController _tabController;

  void initState() { 
    super.initState();
        _tabController = new TabController(vsync: this, initialIndex: 0, length: 2);
  }

  Color _appBarColour = Colors.lightBlue;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("Demo Flutter App"),
          backgroundColor: _appBarColour,
          bottom: new TabBar(
            controller: _tabController,
            tabs: <Widget>[
              new Text("Login Screen"),
              new Text("Make it Rain")
            ],
            indicatorColor: Colors.white,
          ),
        ),

        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            LoginHome(),
            MakeItRainHome(),
          ],
        ),
      ),
    );
  }
}
