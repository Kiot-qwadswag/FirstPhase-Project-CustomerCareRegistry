import 'dart:async';

import 'package:customer_care_flutter/pages/home_page.dart';
import 'package:customer_care_flutter/splash.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyMainApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyMainApp extends StatefulWidget {
  const MyMainApp({super.key});

  @override
  State<MyMainApp> createState() => _MyMainAppState();
}

class _MyMainAppState extends State<MyMainApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
