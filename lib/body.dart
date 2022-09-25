import 'package:a/Register/Register.dart';
import 'package:flutter/material.dart';

import 'package:a/Signup/Signup.dart';

class Body extends StatefulWidget {
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                Spacer(),
                Text(
                  "DAXTER",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Welcome to Daxter's, Lets Shop!"),
                Spacer(flex: 2),
                Image.asset(
                  "assets/images/splash.png",
                  height: 225,
                  width: 240,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 120, horizontal: 70),
              child: Column(
                children: <Widget>[
                  Spacer(
                    flex: 3,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
