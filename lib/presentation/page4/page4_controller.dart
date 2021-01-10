import 'package:get/get.dart';

class Page4Controller extends GetxController {
  String valorTeste;

  Page4Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page4Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page4Controller");
  }

  @override
  onClose() {
    print("$valorTeste : onClose Page4Controller");
    super.onClose();
  }
}
