import 'package:flutter/material.dart';

bgImage(String image) {
  return BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover));
}
