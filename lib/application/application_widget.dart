import 'package:flutter/material.dart';
import 'package:flutter_getx/application/common/routes/app_pages.dart';
import 'package:get/get.dart';

import 'application_bindings.dart';

class ApplicationWidget extends StatefulWidget {
  @override
  _ApplicationWidgetState createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Exemplo de Utilização do Get",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      navigatorKey: Get.key,
      navigatorObservers: [routeObserver],
      enableLog: true,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      defaultGlobalState: Get.defaultGlobalState,
      defaultTransition: Transition.fadeIn,
      initialBinding: ApplicationBinding(),
    );
  }
}
