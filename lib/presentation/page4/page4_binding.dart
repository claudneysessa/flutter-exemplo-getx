import 'package:flutter_getx/presentation/page4/page4_controller.dart';
import 'package:get/get.dart';

class Page4Binding implements Bindings {
  @override
  void dependencies() {
    //classe biding de testes

    // Get.put -> Cria o elemento mesmo se este não foi instanciado

    Get.put<Page4Controller>(
      Page4Controller(),
      tag: "Page4Controller",
      permanent: false,
    );

    // Get.lazyPut -> Cria o elemento somente se ele for instanciado

    // Get.lazyPut<Page4Controller>(
    //   () => Page4Controller(),
    //   tag: "Page4Controller",
    //   fenix: false,
    // );
  }
}
