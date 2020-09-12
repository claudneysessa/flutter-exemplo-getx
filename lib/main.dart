import 'package:flutter/material.dart';
import 'package:flutter_getx/presentation/page1/page1_view.dart';
import 'package:flutter_getx/presentation/page2/page2_view.dart';
import 'package:flutter_getx/presentation/page3/page3_view.dart';
import 'package:flutter_getx/presentation/page4/page4_view.dart';
import 'package:flutter_getx/presentation/page5/page5_view.dart';
import 'package:flutter_getx/presentation/page6/page6_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Page1(),
        Page2(),
        Page3(),
        Page4(),
        Page5(),
        Page6(),
      ],
    );
  }
}
