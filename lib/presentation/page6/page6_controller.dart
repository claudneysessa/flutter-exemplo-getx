import 'package:get/state_manager.dart';

class Page6Controller extends GetxController {
  final _selectedItem = 0.obs;

  get selectedItem => this._selectedItem;
  set selectedItem(value) => this._selectedItem.value = value;

  void setItem(int value) {
    this.selectedItem = (this.selectedItem != value) ? value : 0;
  }

  final _listaPessoa = <Map<String, dynamic>>[
    {"nome": "claudney"},
    {"nome": "juliana"},
    {"nome": "alice"},
  ].obs;

  get listaPessoa {
    return this._listaPessoa;
  }

  void addlistaPessoa(item) {
    this._listaPessoa.add(item);
  }
}
