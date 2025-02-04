import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megha/main.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {

  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();

    whereToGo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.red.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('DaBba', style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w800
            ),
          ),
            Image.asset('assets/images/lunch-box.gif', width: 200,)
        ]
        ),
      ),
    );
  }

  void whereToGo() {
    Timer(Duration(seconds: 4), (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (content) => MyHomePage()));
    });
  }
}