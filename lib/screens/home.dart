import 'package:flutter/material.dart';
import 'package:flutter_play/components/country.dart';
import 'package:flutter_play/components/custom_icons.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';

final Color iconColor = Color(0xff666666);
final countries = getCountries();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  var controller = ScrollController();

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
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: bgImage('assets/images/home.png'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(heading, style: h2(Colors.white)),
                padding: EdgeInsets.only(top: 65, bottom: 2, left: 25)),
            Container(
              child: Text(subheading, style: normal(Colors.white)),
              padding: EdgeInsets.only(left: 25),
              margin: EdgeInsets.only(bottom: 45),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    return CountryItem(countries[index]);
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 100),
            )
          ],
        ),
      ),
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
