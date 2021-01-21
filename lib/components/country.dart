import 'package:flutter/material.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/utils/commons.dart';

class CountryItem extends StatelessWidget {
  final Country country;

  CountryItem(this.country);

  @override
  Widget build(BuildContext context) {
    final width = deviceWidth(context) * 0.7;
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: bgImageRounded(country.image),
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: verticalGradientRounded(),
      ),
    );
  }
}
