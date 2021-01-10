import 'package:flutter_getx/presentation/page6/page6_controller.dart';
import 'package:get/get.dart';

class Page6Binding implements Bindings {
  @override
  void dependencies() {
    //classe biding de testes

    // Get.put -> Cria o elemento mesmo se este não foi instanciado

    Get.put<Page6Controller>(
      Page6Controller(),
      tag: "Page6Controller",
      permanent: false,
    );

    // Get.lazyPut -> Cria o elemento somente se ele for instanciado

    // Get.lazyPut<Page6Controller>(
    //   () => Page6Controller(),
    //   tag: "Page6Controller",
    //   fenix: false,
    // );
  }
}
