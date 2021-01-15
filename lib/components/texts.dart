import 'package:flutter/material.dart';

TextStyle heading(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 40,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto');
}

TextStyle subHeading(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto');
}

TextStyle normalText(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 25,
      fontWeight: FontWeight.w100,
      fontFamily: 'Roboto');
}

TextStyle buttonText(Color _color) {
  return TextStyle(
      color: _color,
      fontSize: 20,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto');
}
