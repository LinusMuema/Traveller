import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_play/components/texts.dart';

class Heading extends StatelessWidget {
  final Color color;
  final bool large;
  final String heading;
  final String cap;
  Heading({this.heading, this.cap, this.color, this.large});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(heading, style: large ? h2(color) : h3(color)),
          margin: EdgeInsets.only(left: 25, top: 65, bottom: 2),
        ),
        Container(
          child: Text(cap, style: h5(Colors.white)),
          margin: EdgeInsets.only(left: 25, top: 2, bottom: 10),
        ),
      ],
    );
  }
}
