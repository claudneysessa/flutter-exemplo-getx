import 'package:get/get.dart';

class Page6Controller extends GetxController {
  final _valorTeste = ''.obs;

  get valorTeste => _valorTeste.value;
  set valorTeste(value) => _valorTeste.value = value;

  Page6Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page6Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page6Controller");
  }

  @override
  onInit() {
    print("${DateTime.now().toIso8601String()} : onInit Page6Controller");
    super.onClose();
  }

  @override
  onClose() {
    print("${DateTime.now().toIso8601String()} : onClose Page6Controller");
    super.onClose();
  }
}
