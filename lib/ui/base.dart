import 'package:coursehub/ui/home.dart';
import 'package:flutter/material.dart';

import 'explore.dart';

class Base extends StatefulWidget {
  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {

  int _current = 0;
  final List<Widget> _screens = [
    HomePage(),
    ExplorePage(),
  ];

  void _onTap(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_current],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        currentIndex: _current,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xff4769FF),
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Color(0xff4769FF)),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.launch,
                color: Color(0xff4769FF),
              ),
              title: Text(
                "Explore",
                style: TextStyle(color: Color(0xffE9E9EA)),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_on,
                color: Color(0xff4769FF),
              ),
              title: Text(
                "Courses",
                style: TextStyle(color: Color(0xffE9E9EA)),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xff4769FF),
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Color(0xffE9E9EA)),
              ),
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
