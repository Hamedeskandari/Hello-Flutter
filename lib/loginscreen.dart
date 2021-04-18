import 'package:flutter/material.dart';
import 'package:loginhamed/home.dart';
class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool temp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      offset: Offset(0.0, 10.0),
                      blurRadius: 20.0)
                ]),
            child: Form(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'hamed'),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          helperText: 'Example: abce@gmail.com',
                          helperStyle: TextStyle(fontSize: 15),
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: temp,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(
                                  temp ? Icons.visibility_off : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  temp = !temp;
                                });
                              }),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          helperText: 'Example: kx12hamider',
                          helperStyle: TextStyle(fontSize: 15),
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (contex)=>home()));
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'hamed',
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.amberAccent,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
