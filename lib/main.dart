import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'intrastructure/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
