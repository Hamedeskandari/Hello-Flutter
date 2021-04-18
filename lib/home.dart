import 'package:flutter/material.dart';
import 'package:loginhamed/loginscreen.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(alignment:Alignment.center ,
        child: Form(child: FlatButton(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
        }, child: Text('back'),
        color: Colors.white,shape: StadiumBorder(),)),
      ),
    );
  }
}
