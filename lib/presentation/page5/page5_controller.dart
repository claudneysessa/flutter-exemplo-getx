import 'package:get/state_manager.dart';

import 'model/pessoa.dart';

class Page5Controller extends GetxController {
  final _pessoa = Pessoa().obs;

  get pessoa {
    return this._pessoa;
  }

  set pessoa(Pessoa value) {
    this._pessoa.value = value;
  }
}
