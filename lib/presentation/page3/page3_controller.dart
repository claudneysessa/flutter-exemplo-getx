import 'package:get/get.dart';

class Page3Controller extends GetxController {
  final _valorTeste = ''.obs;

  get valorTeste => _valorTeste.value;
  set valorTeste(value) => _valorTeste.value = value;

  Page3Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page3Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page3Controller");
  }

  @override
  onInit() {
    print("${DateTime.now().toIso8601String()} : onInit Page3Controller");
    super.onClose();
  }

  @override
  onClose() {
    print("${DateTime.now().toIso8601String()} : onClose Page3Controller");
    super.onClose();
  }
}
