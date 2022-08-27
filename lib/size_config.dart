import 'package:flutter/material.dart';

class Sizeconfig {
  late MediaQueryData _mediaQueryData;
  late double screenwidth;
  late double screenheight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenwidth = _mediaQueryData.size.width;
    screenheight = _mediaQueryData.size.height;
  }
}
