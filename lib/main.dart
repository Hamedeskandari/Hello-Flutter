import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginhamed/home.dart';
import 'package:loginhamed/loginscreen.dart';
import 'package:loginhamed/splash_screen.dart';



void main() {
  runApp(login());
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:"/splash_screen" ,
      routes: {
        "/": (context)=>loginscreen(),
        "/splash_screen":(context)=>splashscreen()
      },
    );
  }
}
