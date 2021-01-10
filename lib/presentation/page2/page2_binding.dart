import 'package:flutter_getx/presentation/page2/page2_controller.dart';
import 'package:get/get.dart';

class Page2Binding implements Bindings {
  @override
  void dependencies() {
    //classe biding de testes

    // Get.put -> Cria o elemento mesmo se este não foi instanciado

    Get.put<Page2Controller>(
      Page2Controller(),
      tag: "Page2Controller",
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
