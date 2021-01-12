import 'package:get/get.dart';

class Page2Controller extends GetxController {
  final _valorTeste = ''.obs;

  get valorTeste => _valorTeste.value;
  set valorTeste(value) => _valorTeste.value = value;

  Page2Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page2Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page2Controller");
  }

  @override
  onInit() {
    print("${DateTime.now().toIso8601String()} : onInit Page2Controller");
    super.onClose();
  }

  @override
  onClose() {
    print("${DateTime.now().toIso8601String()} : onClose Page2Controller");
    super.onClose();
  }
}
