import 'package:flutter/material.dart';
import 'package:flutter_chat_teste/screens/splashscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat",
      theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Color(0XFFF7F9F9)
      ),
      home: SplashScreen(),
    );
  }

}
