import 'package:get/get.dart';

class Page1Controller extends GetxController {
  final _valorTeste = ''.obs;

  get valorTeste => _valorTeste.value;
  set valorTeste(value) => _valorTeste.value = value;

  Page1Controller() {
    print("$valorTeste : Create Page1Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page1Controller");
  }

  @override
  onClose() {
    print("$valorTeste : onClose Page1Controller");
    super.onClose();
  }
}
