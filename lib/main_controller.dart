import 'package:get/state_manager.dart';

// class ObjPessoa {
//   var nome;
//   var idade;
//   ObjPessoa({this.nome, this.idade});
// }

class MainController extends GetxController {
  RxString _nome = "".obs;
  RxInt _contador = 0.obs;
  RxBool _status = false.obs;
  RxDouble _valor = 0.0.obs;

  // RxMap _pessoa = {
  //   "nome": "claudney sarti sessa",
  // }.obs;

  // Rx<ObjPessoa> _objPessoa = ObjPessoa(
  //   nome: "",
  // ).obs;

  // RxList<Map<String, String>> _listaPessoa = [
  //   {
  //     "nome": "Claudney",
  //     "idade": 36,
  //   },
  //   {
  //     "nome": "Juliana",
  //     "idade": 37,
  //   },
  //   {
  //     "nome": "Alice",
  //     "idade": 7,
  //   },
  // ].obs;

  get nome => this._nome.value;
  set nome(value) => this._nome.value = value;

  get contador {
    return this._contador.value;
  }

  set contador(value) {
    this._contador.value = value;
  }

  get status => this._status.value;
  set status(value) => this._status.value = value;

  // get pessoa => this._pessoa.value;
  // set pessoa(value) {
  //   print(value.toString());
  //   this._pessoa.value = value;
  // }

  // ObjPessoa get objPessoa => this._objPessoa.value;
  // set objPessoa(value) {
  //   print(value.toString());
  //   this._objPessoa.value = value;
  // }

  void setNome(String value) {
    this.nome = value;
  }

  void clearNome() {
    this.nome = "";
  }

  void incContador() {
    this.contador++;
  }

  void setStatus() {
    this.status = !this.status;
  }
}
