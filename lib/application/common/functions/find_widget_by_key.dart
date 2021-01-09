import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget findWidgetByKey(String nome) {
  var auxFind = find.byKey(Key(nome)).evaluate().single.widget;
  return auxFind;
}
