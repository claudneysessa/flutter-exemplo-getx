import 'package:get/state_manager.dart';

class Page2Controller extends GetxController {
  RxInt _contador = 0.obs;

  get contador {
    return this._contador;
  }

  set contador(value) {
    this._contador = value;
  }

  void incContador() {
    this.contador++;
  }
}
