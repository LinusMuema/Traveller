import 'package:flutter/material.dart';
import 'package:flutter_play/components/country.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';

final countries = getCountries();
final controller = ScrollController();

class Home extends StatelessWidget {
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
    );
  }
}
