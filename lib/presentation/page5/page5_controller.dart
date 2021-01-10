import 'package:get/get.dart';

class Page5Controller extends GetxController {
  String valorTeste;

  Page5Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page5Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page5Controller");
  }

  @override
  onClose() {
    print("$valorTeste : onClose Page5Controller");
    super.onClose();
  }
}
