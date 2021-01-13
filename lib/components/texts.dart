import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String _text;
  Heading(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Roboto'),
    );
  }
}

class NormalText extends StatelessWidget {
  final String _text;
  final Color _color;
  NormalText(this._text, this._color);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: 24,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
          color: _color),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String _text;
  final Color _color;
  ButtonText(this._text, this._color);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: 20,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w800,
          color: _color),
    );
  }
}
