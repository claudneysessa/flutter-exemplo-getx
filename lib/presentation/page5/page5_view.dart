import 'package:flutter/material.dart';
import 'package:flutter_getx/application/common/components/default_body.dart';
import 'package:flutter_getx/presentation/page5/page5_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Page5 extends StatefulWidget {
  final String title;
  final bool gerarLog;

  const Page5({
    Key key,
    this.title = "PAGE5",
    this.gerarLog = false,
  }) : super(key: key);

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> with RouteAware {
  String dataHoraAbertura;
  final controller = Get.find<Page5Controller>(tag: "Page5Controller");

  @override
  void initState() {
    dataHoraAbertura = DateTime.now().toIso8601String();
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (StatefullWidget) -> initState");
    }
    super.initState();
  }

  @override
  void reassemble() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (StatefullWidget) -> reassemble");
    }
    super.reassemble();
  }

  @override
  void deactivate() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (StatefullWidget) -> deactivate");
    }
    super.deactivate();
  }

  @override
  void dispose() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (StatefullWidget) -> dispose");
    }
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (StatefullWidget) -> didChangeDependencies");
    }
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(Page5 oldWidget) {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (StatefullWidget) -> didUpdateWidget");
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didPopNext() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (RouteAware) -> didPopNext");
    }
  }

  void didPush() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (RouteAware) -> didPush");
    }
  }

  void didPop() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (RouteAware) -> didPop");
    }
  }

  void didPushNext() {
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (RouteAware) -> didPushNext");
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.find<RouteObserver>().subscribe(this, ModalRoute.of(context));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("${widget.title}"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.infoCircle),
            onPressed: () {
              final controller = Get.find<Page5Controller>(tag: "Page5Controller");
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
