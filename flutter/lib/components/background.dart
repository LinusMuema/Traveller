import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_play/utils/commons.dart';

class BlurBackground extends StatefulWidget {
  final bool detailsState;
  final Widget content;
  BlurBackground({@required this.detailsState, @required this.content});

  @override
  _BlurBackgroundState createState() => _BlurBackgroundState();
}

class _BlurBackgroundState extends State<BlurBackground> {
  @override
  Widget build(BuildContext context) {
    final bool _detailState = widget.detailsState;
    final Widget _content = widget.content;

    return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaX: _detailState ? 5.0 : 0.0, sigmaY: _detailState ? 5.0 : 0.0),
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: verticalGradientRounded(),
        child: _content,
      ),
    );
  }
}
