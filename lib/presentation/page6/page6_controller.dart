import 'package:get/get.dart';

class Page6Controller extends GetxController {
  String valorTeste;

  Page6Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page6Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page6Controller");
  }

  @override
  onClose() {
    print("$valorTeste : onClose Page6Controller");
    super.onClose();
  }
}
