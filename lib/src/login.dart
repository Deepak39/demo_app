import "package:flutter/material.dart";

class LoginHome extends StatefulWidget {
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {

  var _grtMsg = "";
  var usrn = "";

  final TextEditingController _usrController = new TextEditingController();
  final TextEditingController _pswdController = new TextEditingController();

  //when clear button is pressed
  void _erase(){
    setState(() {
          _usrController.clear();
          _pswdController.clear();
          _grtMsg = "";
      });
  }

  //When login button is clicked
  void _greetMsg(){
    setState(() {
          String usrn = _usrController.text.toString();
          _grtMsg = "Hello! $usrn";
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(5.0),
      alignment: Alignment.topCenter,
      child: new ListView(
        children: <Widget>[
          
          //Person Icon
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              
              //creating the circular Container To hold The person Icon
              new Container(
                padding: EdgeInsets.all(2.0),
                decoration: new BoxDecoration(
                  color: Colors.blueGrey.shade700,
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.blue.shade800,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(50.0)
                ),

                //the Person icon
                child: new Icon(
                 Icons.person,
                 color: Colors.white,
                 size: 45.0,
                ),
              
              ),
            ]
          ),

          new Padding(padding: EdgeInsets.symmetric(vertical: 4.0),),

          //Form
          new Opacity(
            opacity: 0.7,
            child: new Container(

              //apply stylings to the form container
              width: 340.0,
              height: 200.0,
              padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 0.0),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),

              //creating form inside a column
              child: new Column(
                children: <Widget>[

                  new Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),

                  //text Field For UserName
                  new TextField(
                    controller: _usrController,
                    textDirection: TextDirection.ltr,
                    decoration: new InputDecoration(
                      hintText: "Username",
                      icon: Icon(Icons.person_outline),
                      fillColor: Theme.of(context).primaryColor,
                    ),
                  
                  ),
                
                  new Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                  ),

                  //password Field
                  new TextField(
                    controller: _pswdController,
                    obscureText: true,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock_outline),
                      fillColor: Theme.of(context).primaryColor,
                    ),
                  ),

                  new Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),

                  //two buttons of last row
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


                      //Login button
                      new RaisedButton(
                        onPressed: () => _greetMsg(),
                        color: Colors.blue.shade400,
                        child: new Text(
                          "Login",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                          )
                        ),
                      ),

                      new Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),

                      new RaisedButton(
                        onPressed: () => _erase(),
                        elevation: 4.0,
                        color: Colors.blue.shade400,
                        child: new Text(
                          "clear",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                          )
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            
            ),
          ),

          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
          ),

          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Wrap(
                children: <Widget>[
                   new Text(
                     "$_grtMsg",
                     style: new TextStyle(
                       fontSize: 20.0,
                       color: Colors.white,
                       fontWeight: FontWeight.w500,
                     ),
                    ),
                ]
              )
            ],
          ),
        ],
      ),

    );
  }
}