import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main()=>runApp(new MyApp());
//void mein()=>runApp(new MyApp2());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(home: new LoginPage(),theme: new ThemeData(primarySwatch: Colors.blue));
  }  
}

class LoginPage extends StatefulWidget
{
  @override
  State createState()=>new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin
{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override 
  void initState()
  {
    super.initState();
    _iconAnimationController=new AnimationController(vsync:this,duration:new Duration(milliseconds:500));
    _iconAnimation=new CurvedAnimation(parent:_iconAnimationController,curve:Curves.bounceOut);
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      body: new Stack(
        fit:StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/geo.png"),
          fit:BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              new FlutterLogo(
                size: _iconAnimation.value *100,
                ),
                new Form(
                  child: new Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                       inputDecorationTheme: new InputDecorationTheme(
                         labelStyle: new TextStyle(
                           color:Colors.indigo,
                          // backgroundColor:Colors.lightBlueAccent,
                           fontSize: 20.0
                         )
                       )
                    ),
                    child: Container(
                      //height: 50.0,
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        children:<Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Password",
                              enabled: true
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new MaterialButton(
                            color: Colors.black38,
                            textColor: Colors.indigo,
                            child: new Text("Login"),
                            splashColor: Colors.indigoAccent,
                            onPressed: ()=>{runApp(new MyApp3())}
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new MaterialButton(
                            color: Colors.black26,
                            textColor: Colors.indigo,
                            splashColor: Colors.indigoAccent,
                            child: new Text("New user...Signup"),
                            onPressed: ()=>{runApp(new MyApp2())}
                          ),
                          
                        ],
                      ),
                    ),
                  )
                )
              ],
          )
        ]     
      ),
    );
  }
}

class MyApp2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(home: new LoginPage2(),theme: new ThemeData(primarySwatch: Colors.blue));
  }  
}

class LoginPage2 extends StatefulWidget
{
  @override
  State createState()=>new LoginPageState2();
}

class LoginPageState2 extends State<LoginPage2> with SingleTickerProviderStateMixin
{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override 
  void initState()
  {
    super.initState();
    _iconAnimationController=new AnimationController(vsync:this,duration:new Duration(milliseconds:500));
    _iconAnimation=new CurvedAnimation(parent:_iconAnimationController,curve:Curves.bounceOut);
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
     // backgroundColor:Colors.redAccent,
      body: new Stack(
        fit:StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/geo.png"),
          fit:BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              new FlutterLogo(
                size: _iconAnimation.value *100,
                ),
                new Form(
                  child: new Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                       inputDecorationTheme: new InputDecorationTheme(
                         labelStyle: new TextStyle(
                           color:Colors.indigo,
                          // backgroundColor:Colors.lightBlueAccent,
                           fontSize: 20.0
                         )
                       )
                    ),
                    child: Container(
                      //height: 50.0,
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        children:<Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Aadhaar Card No.",
                              enabled: true
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                              enabled: true
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new MaterialButton(
                            color: Colors.black26,
                            textColor: Colors.indigo,
                            splashColor: Colors.indigoAccent,
                            child: new Text("Register"),
                            onPressed: ()=>{runApp(new MyApp())}
                          ),
                          
                        ],
                      ),
                    ),
                  )
                )
              ],
          )
        ]     
      ),
    );
  }
}

class MyApp3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(home: new LoginPage3(),theme: new ThemeData(primarySwatch: Colors.blue));
  }  
}

class LoginPage3 extends StatefulWidget
{
  @override
  State createState()=>new LoginPageState3();
}


class LoginPageState3 extends State<LoginPage3> with SingleTickerProviderStateMixin
{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override 
  void initState()
  {
    super.initState();
    _iconAnimationController=new AnimationController(vsync:this,duration:new Duration(milliseconds:500));
    _iconAnimation=new CurvedAnimation(parent:_iconAnimationController,curve:Curves.bounceOut);
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
     // backgroundColor:Colors.redAccent,
      body: new Stack(
        fit:StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/geo.png"),
          fit:BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              new FlutterLogo(
                size: _iconAnimation.value *100,
                ),
                new Form(
                  child: new Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                       inputDecorationTheme: new InputDecorationTheme(
                         labelStyle: new TextStyle(
                           color:Colors.indigo,
                          // backgroundColor:Colors.lightBlueAccent,
                           fontSize: 20.0
                         )
                       )
                    ),
                    child: Container(
                      //height: 50.0,
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        children:<Widget>[
                          new MaterialButton(
                            color: Colors.black26,
                            textColor: Colors.indigo,
                            splashColor: Colors.indigoAccent,
                            child: new Text("Scan QR-Code"),
                            onPressed: ()=>{}
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new MaterialButton(
                            color: Colors.black26,
                            textColor: Colors.indigo,
                            splashColor: Colors.indigoAccent,
                            child: new Text("Schedule"),
                            onPressed: ()=>{runApp(new MyApp4())}
                          ),
                          
                        ],
                      ),
                    ),
                  )
                )
              ],
          )
        ]     
      ),
    );
  }
}
class MyApp4 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(home: new LoginPage4(),theme: new ThemeData(primarySwatch: Colors.blue));
  }  
}

class LoginPage4 extends StatefulWidget
{
  @override
  State createState()=>new LoginPageState4();
}


class LoginPageState4 extends State<LoginPage4> with SingleTickerProviderStateMixin
{
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;
  @override 
  void initState()
  {
    super.initState();
    _iconAnimationController=new AnimationController(vsync:this,duration:new Duration(milliseconds:500));
    _iconAnimation=new CurvedAnimation(parent:_iconAnimationController,curve:Curves.bounceOut);
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
     // backgroundColor:Colors.redAccent,
      body: new Stack(
        fit:StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/geo.png"),
          fit:BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              new FlutterLogo(
                size: _iconAnimation.value *100,
                ),
                new Form(
                  child: new Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                       inputDecorationTheme: new InputDecorationTheme(
                         labelStyle: new TextStyle(
                           color:Colors.indigo,
                          // backgroundColor:Colors.lightBlueAccent,
                           fontSize: 20.0
                         )
                       )
                    ),
                    child: Container(
                      //height: 50.0,
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        children:<Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "To",
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "From",
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top:20.0),
                          ),
                          new MaterialButton(
                            color: Colors.black26,
                            textColor: Colors.indigo,
                            splashColor: Colors.indigoAccent,
                            child: new Text("Get Schedule"),
                            onPressed: ()=>{}
                          ),
                          
                          
                        ],
                      ),
                    ),
                  )
                )
              ],
          )
        ]     
      ),
    );
  }
}
