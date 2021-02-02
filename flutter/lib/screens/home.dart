import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_play/components/colors.dart';
import 'package:flutter_play/components/country.dart';
import 'package:flutter_play/components/headings.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final countries =
        getCountries().map((e) => countryItem(e, context)).toList();
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: bgImage('assets/images/home.png'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(
            heading: heading,
            cap: subheading,
            color: Colors.white,
            large: true,
          ),
          Expanded(
            child: CarouselSlider(
              items: countries,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.longestSide,
                autoPlay: true,
                onPageChanged: (index, _) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: countries.map((e) {
              final index = countries.indexOf(e);
              final active = _currentIndex == index;
              return Container(
                margin: EdgeInsets.only(top: 30, bottom: 90, left: 4, right: 4),
                width: active ? 20 : 10,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: active ? Colors.white : grey300,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
