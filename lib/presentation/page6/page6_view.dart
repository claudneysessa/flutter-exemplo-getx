import 'package:flutter/material.dart';
import 'package:flutter_getx/application/common/components/default_body.dart';
import 'package:flutter_getx/presentation/page1/page1_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Page6 extends StatefulWidget {
  final String title;
  final bool gerarLog;

  const Page6({
    Key key,
    this.title = "PAGE6",
    this.gerarLog = false,
  }) : super(key: key);

  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  String dataHoraAbertura;
  @override
  void initState() {
    dataHoraAbertura = DateTime.now().toIso8601String();
    if (widget.gerarLog) {
      print("initState ${widget.title}");
    }
    super.initState();
  }

  @override
  void reassemble() {
    if (widget.gerarLog) {
      print("reassemble ${widget.title}");
    }
    super.reassemble();
  }

  @override
  void deactivate() {
    if (widget.gerarLog) {
      print("deactivate ${widget.title}");
    }
    super.deactivate();
  }

  @override
  void dispose() {
    if (widget.gerarLog) {
      print("dispose ${widget.title}");
    }
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if (widget.gerarLog) {
      print("didChangeDependencies ${widget.title}");
    }
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(Page6 oldWidget) {
    if (widget.gerarLog) {
      print("didUpdateWidget ${widget.title}");
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("${widget.title}"),
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
        title: "${widget.title} - ${dataHoraAbertura}",
      ),
    );
  }
}
