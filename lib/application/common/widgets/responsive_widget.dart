import 'package:flutter/material.dart';
import 'dart:math' as math;

class ResponsiveWidget {
  double _width;
  double _height;
  double _diagonal;

  bool _isTablet;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  bool get isTablet => _isTablet;

  static ResponsiveWidget of(BuildContext context) => ResponsiveWidget(context);

  ResponsiveWidget(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    this._width = size.width;
    this._height = size.height;

    // c2+ a2+b2 => c = srt(a2+b2)
    this._diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));

    this._isTablet = size.shortestSide >= 600;
  }

  double widthPercentual(double percent) => _width * percent / 100;
  double heightPercentual(double percent) => _height * percent / 100;
  double diagonalPercentual(double percent) => _diagonal * percent / 100;
}
