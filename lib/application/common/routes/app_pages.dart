import 'package:flutter_getx/application/common/functions/conversion.dart';
import 'package:flutter_getx/presentation/home/home_view.dart';
import 'package:flutter_getx/presentation/page1/page1_binding.dart';
import 'package:flutter_getx/presentation/page1/page1_view.dart';
import 'package:flutter_getx/presentation/page2/page2_view.dart';
import 'package:flutter_getx/presentation/page3/page3_view.dart';
import 'package:flutter_getx/presentation/page4/page4_view.dart';
import 'package:flutter_getx/presentation/page5/page5_view.dart';
import 'package:flutter_getx/presentation/page6/page6_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.PAGE1,
      page: () => Page1(
        title: (Get.parameters.length == 0) ? "PAGE1" : Get.parameters["title"].toString(),
        gerarLog: (Get.parameters.length == 0)
            ? true
            : (Get.parameters["gerarLog"].toLowerCase() == "true")
                ? true
                : false,
      ),
      bindings: [
        Page1Binding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.PAGE2,
      page: () => Page2(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.PAGE3,
      page: () => Page3(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.PAGE4,
      page: () => Page4(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.PAGE5,
      page: () => Page5(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.PAGE6,
      page: () => Page6(),
      transition: Transition.fadeIn,
    ),
  ];
}
