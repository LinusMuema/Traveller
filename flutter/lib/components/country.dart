import 'package:flutter/material.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/data/destinations.dart';
import 'package:flutter_play/utils/commons.dart';

import 'headings.dart';

Widget countryItem(Country country, BuildContext context) {
  final count = getDestinations(country.name).length;
  final places = "$count places to visit";
  final heading = country.name;
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, '/country', arguments: country);
    },
    child: Hero(
      tag: country.name,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: bgImageRounded(country.image),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: verticalGradientRounded(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(
                heading: heading,
                cap: places,
                color: Colors.white,
                large: false,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
