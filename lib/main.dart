import 'package:flutter/material.dart';
import 'package:flutter_getx/main_controller.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MainController controller = MainController();
  final TextEditingController textController = TextEditingController();

  void initState() {
    textController.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Teste GetX",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              Obx(
                () {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: textController,
                      obscureText: controller.status,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(Icons.access_alarm),
                          onPressed: () {
                            controller.setStatus();
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: RaisedButton(
                        onPressed: () {
                          controller.setNome(textController.text);
                        },
                        child: Text("Set Nome"),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: RaisedButton(
                        onPressed: () {
                          controller.incContador();
                        },
                        child: Text("Set Contador"),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: RaisedButton(
                        onPressed: () {
                          // controller.pessoa["nome"] = textController.text;
                          // controller.objPessoa.nome = textController.text;
                          // controller.objPessoa.idade = 36;
                        },
                        child: Text("Set Pessoa"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GetX<MainController>(
                builder: (_) {
                  return Column(
                    children: [
                      Divider(),
                      Text(controller.nome ?? ""),
                    ],
                  );
                },
              ),
              Obx(
                () {
                  return Column(
                    children: [
                      Divider(),
                      Text(controller?.contador?.toString()),
                    ],
                  );
                },
              ),
              // GetX<MainController>(
              //   builder: (_) {
              //     return Column(
              //       children: [
              //         Divider(),
              //         Text(controller.pessoa.toString() ?? ""),
              //       ],
              //     );
              //   },
              // ),
              // GetX<MainController>(
              //   builder: (_) {
              //     return Column(
              //       children: [
              //         Divider(),
              //         Text(controller.objPessoa.nome ?? ""),
              //       ],
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
