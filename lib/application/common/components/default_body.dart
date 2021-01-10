import 'package:flutter/material.dart';
import 'package:flutter_getx/application/common/components/custom_buttom.dart';
import 'package:flutter_getx/application/common/routes/app_pages.dart';
import 'package:get/route_manager.dart';

class DefaultBody extends StatelessWidget {
  final String title;

  const DefaultBody({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "${this.title}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomButtom(
            title: "PAGE1",
            navigation: () {
              Get.toNamed(Routes.PAGE1);
            },
          ),
          CustomButtom(
            title: "PAGE2",
            navigation: () {
              Get.toNamed(Routes.PAGE2);
            },
          ),
          CustomButtom(
            title: "PAGE3",
            navigation: () {
              Get.toNamed(Routes.PAGE3);
            },
          ),
          CustomButtom(
            title: "PAGE4",
            navigation: () {
              Get.toNamed(Routes.PAGE4);
            },
          ),
          CustomButtom(
            title: "PAGE5",
            navigation: () {
              Get.toNamed(Routes.PAGE5);
            },
          ),
          CustomButtom(
            title: "PAGE6",
            navigation: () {
              Get.toNamed(Routes.PAGE6);
            },
          ),
          CustomButtom(
            title: "SAIR",
            navigation: () {
              // Get.offNamedUntil(Routes.HOME, (route) => Get.currentRoute == Routes.HOME);
              Get.until((route) => Get.currentRoute == Routes.HOME);
            },
          ),
        ],
      ),
    );
  }
}
