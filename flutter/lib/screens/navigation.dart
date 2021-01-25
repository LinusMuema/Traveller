import 'package:flutter/material.dart';
import 'package:flutter_play/components/colors.dart';
import 'package:flutter_play/components/custom_icons.dart';
import 'package:flutter_play/screens/activity.dart';
import 'package:flutter_play/screens/explore.dart';
import 'package:flutter_play/screens/images.dart';
import 'package:flutter_play/screens/profile.dart';

import 'home.dart';

final screens = [Home(), Images(), Explore(), Activity(), Profile()];
final icons = [
  CustomIcons.home,
  CustomIcons.image,
  CustomIcons.location,
  CustomIcons.bell,
  CustomIcons.profile
];

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
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
        items: icons.map((e) => navBarItem(e)).toList(),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: grey300,
        onTap: _onItemClicked,
      ),
    );
  }

  BottomNavigationBarItem navBarItem(IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(icon), label: '', backgroundColor: Colors.transparent);
  }
}
