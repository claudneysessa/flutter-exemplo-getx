import 'package:flutter_getx/presentation/page1/page1_controller.dart';
import 'package:get/get.dart';

class Page1Binding implements Bindings {
  @override
  void dependencies() {
    //classe biding de testes

    // Get.put -> Cria o elemento mesmo se este não foi instanciado

    Get.put<Page1Controller>(
      Page1Controller(),
      permanent: false,
    );

    // Get.lazyPut -> Cria o elemento somente se ele for instanciado

    // Get.lazyPut<Page1Controller>(
    //   () => Page1Controller(),
    //   tag: "Page1Controller",
    //   fenix: false,
    // );
  }
}
