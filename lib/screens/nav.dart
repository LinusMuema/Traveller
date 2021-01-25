import 'package:flutter/material.dart';
import 'package:flutter_play/components/custom_icons.dart';
import 'package:flutter_play/screens/activity.dart';
import 'package:flutter_play/screens/explore.dart';
import 'package:flutter_play/screens/images.dart';
import 'package:flutter_play/screens/profile.dart';

final Color iconColor = Color(0xff666666);
final screens = [Home(), Images(), Explore(), Activity(), Profile()];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(CustomIcons.home),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(CustomIcons.image),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(CustomIcons.location),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(CustomIcons.bell),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(CustomIcons.profile),
              label: '')
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: iconColor,
        onTap: _onItemClicked,
      ),
    );
  }
}
