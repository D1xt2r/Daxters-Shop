import 'package:a/Home.dart';
import 'package:a/chat/chat.dart';
import 'package:a/profile/profile.dart';
import 'package:a/setting/settings.dart';
import 'package:flutter/material.dart';

class btmnav extends StatefulWidget {
  @override
  HomeBody createState() => HomeBody();
}

class HomeBody extends State<btmnav> {
  int currentIndex1 = 0;
  static final List<Widget> widgetOp = <Widget>[
    homepage(),
    chat(),
    Settings(),
    profile(),
  ];

  void onTap1(int index) {
    setState(() {
      currentIndex1 = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetOp[currentIndex1],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex1,
          onTap: onTap1,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 10,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "chat", icon: Icon(Icons.chat)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
          ]),
    );
  }
}
