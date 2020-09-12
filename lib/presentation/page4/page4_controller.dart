import 'package:get/state_manager.dart';

class Page4Controller extends GetxController {
  final _pessoa = {
    "nome": "",
    "idade": "0",
  }.obs;

  get pessoa {
    return this._pessoa;
  }

  set pessoa(value) {
    this._pessoa.value = value;
  }
}
