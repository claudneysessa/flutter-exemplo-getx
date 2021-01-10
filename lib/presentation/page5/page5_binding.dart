import 'package:flutter_getx/presentation/page5/page5_controller.dart';
import 'package:get/get.dart';

class Page5Binding implements Bindings {
  @override
  void dependencies() {
    //classe biding de testes

    // Get.put -> Cria o elemento mesmo se este não foi instanciado

    Get.put<Page5Controller>(
      Page5Controller(),
      tag: "Page5Controller",
      permanent: false,
    );

    // Get.lazyPut -> Cria o elemento somente se ele for instanciado

    // Get.lazyPut<Page5Controller>(
    //   () => Page5Controller(),
    //   tag: "Page5Controller",
    //   fenix: false,
    // );
  }
}
