import 'package:flutter/material.dart';
import 'package:flutter_getx/presentation/Page6/Page6_controller.dart';
import 'package:get/get.dart';

class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  final Page6Controller controller = Page6Controller();
  final TextEditingController nomeController = TextEditingController();
  FocusNode nomeFocus;

  @override
  void initState() {
    nomeController.clear();
    nomeFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nomeController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("GetX: List<Map<String,dynamic>>"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        autofocus: true,
                        focusNode: nomeFocus,
                        controller: nomeController,
                        decoration: InputDecoration(
                          labelText: "Descrição",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: RaisedButton(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              color: Colors.blue[400],
                              onPressed: () {
                                controller.addlistaPessoa({
                                  "nome": nomeController.text,
                                });
                                nomeController.clear();
                                FocusScope.of(context).requestFocus(nomeFocus);
                              },
                              child: Text(
                                "Incluir Ítem",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: GetX<Page6Controller>(
                  builder: (info) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
                      child: ListView.separated(
                        itemCount: controller?.listaPessoa?.length ?? 0,
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 0,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Obx(
                            () {
                              return Material(
                                color: controller.selectedItem.value == (index + 1)
                                    ? Colors.blue[200].withAlpha(100)
                                    : Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    controller.setItem((index + 1));
                                  },
                                  child: ListTile(
                                    title: Text(controller?.listaPessoa[index]["nome"] ?? ""),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
