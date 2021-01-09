import 'package:flutter/material.dart';
import 'package:flutter_getx/application/common/components/default_body.dart';
import 'package:flutter_getx/presentation/page1/page1_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  final String title;

  const HomeView({
    Key key,
    this.title = "HOME",
  }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    print("criar ${widget.title}");
    super.initState();
  }

  @override
  void dispose() {
    print("destruir ${widget.title}");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Exemplo Get"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.infoCircle),
            onPressed: () {
              final controller = Get.find<Page1Controller>(tag: "Page1Controller");
              print(controller.valorTeste);
            },
          )
        ],
      ),
      body: DefaultBody(
        title: "${widget.title}",
      ),
    );
  }
}
