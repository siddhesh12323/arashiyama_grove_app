import 'dart:ui';

import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 25.0;
  static const _textSizeDefault = 16.0;
  static final _textColorStrong = _hexToColor('000000');
  static final _textColorDefault = _hexToColor('666666');
  static final _fontNameDefault = 'ProductSans';

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

  static final headerLarge = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: 25,
    color: Colors.black,
  );

  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
  );

  static final navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
  );
}
