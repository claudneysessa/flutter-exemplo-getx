import 'package:flutter/material.dart';
import 'package:flutter_getx/presentation/page2/page2_controller.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final Page2Controller controller = Page2Controller();
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(Page2 oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX: Contador"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GetX<Page2Controller>(
                  builder: (_) {
                    return Container(
                      padding: EdgeInsets.all(15),
                      height: 150,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: CircleAvatar(
                          child: Text(
                            controller.contador.toString(),
                            style: TextStyle(
                              fontSize: 55,
                            ),
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
                            controller.incContador();
                          },
                          child: Text(
                            "Executar",
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
        ),
      ),
    );
  }
}
