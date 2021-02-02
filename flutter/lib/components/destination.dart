import 'package:flutter/material.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/destinations.dart';
import 'package:flutter_play/utils/commons.dart';

Widget destinationItem(Destination destination) {
  return Container(
    constraints: BoxConstraints.expand(),
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: bgImageRounded(destination.image),
    child: Container(
      decoration: verticalGradientRounded(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(destination.name, style: buttonText(Colors.white)),
          ),
        ],
      ),
    ),
  );
}
