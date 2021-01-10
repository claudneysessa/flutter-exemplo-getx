import 'package:get/get.dart';

class Page3Controller extends GetxController {
  String valorTeste;

  Page3Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page3Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page3Controller");
  }

  @override
  onClose() {
    print("$valorTeste : onClose Page3Controller");
    super.onClose();
  }
}
