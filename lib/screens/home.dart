import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_play/components/country.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final countries = getCountries().map((e) => countryItem(e)).toList();
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: countries.map((e) {
              final index = countries.indexOf(e);
              final active = _currentIndex == index;
              return Container(
                margin:
                    EdgeInsets.only(top: 40, bottom: 100, left: 5, right: 5),
                width: active ? 20 : 10,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    color: active ? Colors.white : Color(0xff666666)),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
