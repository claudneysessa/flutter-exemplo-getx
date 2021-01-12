import 'package:get/get.dart';

class Page4Controller extends GetxController {
  final _valorTeste = ''.obs;

  get valorTeste => _valorTeste.value;
  set valorTeste(value) => _valorTeste.value = value;

  Page4Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page4Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page4Controller");
  }

  @override
  onInit() {
    print("${DateTime.now().toIso8601String()} : onInit Page4Controller");
    super.onClose();
  }

  @override
  onClose() {
    print("${DateTime.now().toIso8601String()} : onClose Page4Controller");
    super.onClose();
  }
}
