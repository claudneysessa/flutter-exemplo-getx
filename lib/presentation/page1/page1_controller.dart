import 'package:get/get.dart';

class Page1Controller extends GetxController {
  String valorTeste;

  Page1Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page1Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page1Controller");
  }
}
