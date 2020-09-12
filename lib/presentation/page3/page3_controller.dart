import 'package:get/state_manager.dart';

class Page3Controller extends GetxController {
  RxBool _status = false.obs;

  get status {
    return this._status.value;
  }

  set status(value) {
    this._status.value = value;
  }

  void setStatus() {
    this.status = !this.status;
  }
}
