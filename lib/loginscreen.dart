import 'package:flutter/material.dart';
import 'dart:ui';
import 'homescreen.dart';

class LoginScreen extends StatefulWidget{
  @override
  createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //bg image
          BackdropFilter(
            filter:ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
              child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/bg.jpg"),
                ),
              ),
            ),
          ),

          //filter screen
          Container(
            color: Colors.lightBlueAccent[400].withOpacity(0.4),
          ),

          //login box container
          Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 220.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:30.0,right: 30.0,top: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:30.0,right: 30.0,bottom: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),


                  Container(
                    height: 55.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                    ),
                    child: FlatButton(
                      splashColor: Colors.green,
                      highlightColor: Colors.green,
                      onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),),
                      child: Center(
                      child: Text("LOGIN",style:TextStyle(fontSize: 25.0,color:Colors.white,fontWeight: FontWeight.w300)),
                    ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        ]
      ),
    );
  }
}