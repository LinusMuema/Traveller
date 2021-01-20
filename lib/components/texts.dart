import 'package:flutter/material.dart';

final heading = "Explore";
final subheading = "new amazing countries";

TextStyle h2(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 40,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto');
}

TextStyle h3(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto');
}

TextStyle h4(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto');
}

TextStyle normal(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 25,
      fontWeight: FontWeight.w100,
      fontFamily: 'Roboto');
}

TextStyle caption(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto');
}

TextStyle buttonText(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 20,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto');
}
