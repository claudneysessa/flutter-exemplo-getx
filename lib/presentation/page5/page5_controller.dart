import 'package:get/get.dart';

class Page5Controller extends GetxController {
  final _valorTeste = ''.obs;

  get valorTeste => _valorTeste.value;
  set valorTeste(value) => _valorTeste.value = value;

  Page5Controller() {
    valorTeste = DateTime.now().toIso8601String();
    print("$valorTeste : Create Page5Controller");
  }

  void dispose() {
    print("${DateTime.now().toIso8601String()} : dispose Page5Controller");
  }

  @override
  onInit() {
    print("${DateTime.now().toIso8601String()} : onInit Page5Controller");
    super.onClose();
  }

  @override
  onClose() {
    print("${DateTime.now().toIso8601String()} : onClose Page5Controller");
    super.onClose();
  }
}
