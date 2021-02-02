import 'package:flutter/material.dart';
import 'package:flutter_play/utils/commons.dart';

class ContainerBackground extends StatelessWidget {
  final String image;
  final Widget content;

  ContainerBackground({this.image, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: bgImage(image),
      child: content,
    );
  }
}

class ContainerGradient extends StatelessWidget {
  final Widget content;

  ContainerGradient({this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: verticalGradientRounded(),
      child: content,
    );
  }
}
