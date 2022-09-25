import 'package:a/background.dart';
import 'package:a/Welcome.dart';
import 'package:flutter/material.dart';

void main(){

runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.grey),
              bodyText2:  TextStyle(color: Colors.blue)
        ), visualDensity: VisualDensity.adaptivePlatformDensity,
      ),home: Welcome(),
    );
  }
}


