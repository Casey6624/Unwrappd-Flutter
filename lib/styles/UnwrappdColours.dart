import 'package:flutter/material.dart';

Map<int, Color> _color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class UnwrappdColours {
  static MaterialColor highlightGreen = MaterialColor(0xFF39DBA1, _color);
  static MaterialColor offHighlightGreen = MaterialColor(0xFF59c29d, _color);
  static MaterialColor mainGreen = MaterialColor(0xFF00242b, _color);
  static MaterialColor orange = MaterialColor(0xFFdb5439, _color);
  static MaterialColor grey = MaterialColor(0xFFf2f2f2, _color);
  static MaterialColor gold = MaterialColor(0xFFdba539, _color);
}
