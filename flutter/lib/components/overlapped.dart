import 'package:flutter/material.dart';

Widget overlapped(List<String> images) {
  final overlap = 30.0;

  List<Widget> stackLayers = List<Widget>.generate(images.length, (index) {
    return Padding(
      padding: EdgeInsets.fromLTRB(index.toDouble() * overlap, 10, 0, 10),
      child: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage(images[index]),
        backgroundColor: Colors.transparent,
      ),
    );
  });

  return Stack(children: stackLayers);
}
