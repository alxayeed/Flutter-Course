// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = [
    HomeScreen(),
    MyAdsScreen(),
    AddScreen(),
    ChatScreen(),
    ProfileScreen()
  ];

  int _currentIndex = 0;

  void _changeNavigation(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _changeNavigation,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14.0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "My Ads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger_outline), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ]),
    );
  }
}
