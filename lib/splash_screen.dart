import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}


class _splashscreenState extends State<splashscreen> {
  starttime(){
    var _duration=Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }
  navigationPage(){
    Navigator.of(context).pushNamed('/');
  }
  @override
  void initState() {
    // TODO: implement initState
    starttime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(70, 50, 50, 0),
        child: Column(//mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Container(alignment:Alignment.center ,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              'assets/images/1234.jpg',
            ))),
          ),
          SizedBox(height: 50,),
         Text('HAMED ESKANDARI',
           style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, ),),
              SizedBox(height: 200,),
              CircularProgressIndicator()

        ]),
      ),

    );
  }
}
