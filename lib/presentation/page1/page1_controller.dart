import 'package:get/state_manager.dart';

class Page1Controller extends GetxController {
  RxString _nome = "".obs;

  get nome {
    return this._nome.value;
  }

  set nome(value) {
    this._nome.value = value;
  }

  void setNome(String value) {
    this.nome = value;
  }

  void clearNome() {
    this.nome = "";
  }
}
