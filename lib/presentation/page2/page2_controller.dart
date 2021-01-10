import 'package:get/get.dart';

class Page2Controller extends GetxController {
  String valorTeste;

  Page2Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page2Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page2Controller");
  }

  @override
  onClose() {
    print("$valorTeste : onClose Page2Controller");
    super.onClose();
  }
}
