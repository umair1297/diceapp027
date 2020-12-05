import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 15,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('FA17-BSE-027',textScaleFactor: 3,),
      image: new Image.network('IMAGE.JPG'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("dice app"),
      actions: [
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.white,

          ),

        ),
        ],
      ),


      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}