import 'dart:ui';

import 'package:a/Home.dart';
import 'package:a/Signup/Signup.dart';
import 'package:a/Welcome.dart';
import 'package:a/main.dart';
import 'package:a/nav/BottonNav.dart';
import "package:flutter/material.dart";

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Text("Welcome!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Text(
                "to Daxter's Online Store",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          //Email
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              width: 380,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    setState(() {
                      errors.add("Please enter your email !");
                    });
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email!!",
                  prefixIcon: Icon(Icons.email),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.blue),
                    gapPadding: 10,
                  ),
                ),
              ),
            ),
          ),
          //Password

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 380,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your Password",
                  prefixIcon: Icon(Icons.lock),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.blue),
                    gapPadding: 10,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 380,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Enter your Password",
                  prefixIcon: Icon(Icons.lock),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.blue),
                    gapPadding: 10,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 380,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter your PhoneNumber",
                  prefixIcon: Icon(Icons.call),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.grey),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Colors.blue),
                    gapPadding: 10,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: 320,
              height: 56,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => btmnav()));
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account ",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignUp()));
                  },
                  child: Text("Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
