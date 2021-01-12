import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx/application/common/components/custom_buttom.dart';
import 'package:flutter_getx/application/common/components/default_body.dart';
import 'package:flutter_getx/presentation/page1/page1_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Page1 extends StatefulWidget {
  final String title;
  final bool gerarLog;

  const Page1({
    Key key,
    this.title = "PAGE1",
    this.gerarLog = false,
  }) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with RouteAware {
  String dataHoraAbertura;
  // Worker worker;
  final controller = Get.find<Page1Controller>();

  @override
  void initState() {
    dataHoraAbertura = DateTime.now().toIso8601String();
    if (widget.gerarLog) {
      print("${DateTime.now().toIso8601String()} : ${widget.title} (StatefullWidget) -> initState");
    }

    // worker = ever(
    //   controller.valorTeste,
    //   (_) {
    //     print("interval $_");
    //   },
    // );

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
    // worker.dispose();
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
  void didUpdateWidget(Page1 oldWidget) {
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
              final controller = Get.find<Page1Controller>();
              print(controller.valorTeste);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultBody(
              title: "${widget.title} - ${dataHoraAbertura}",
            ),
            CustomButtom(
              title: "Executar",
              navigation: () {
                controller.valorTeste = DateTime.now().toIso8601String();
              },
            ),
            Divider(),
            Obx(
              () {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Obx: ${controller.valorTeste}"),
                );
              },
            ),
            GetX<Page1Controller>(
              builder: (value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("GetX (Sem init): ${value.valorTeste}"),
                );
              },
            ),
            GetX<Page1Controller>(
              init: Page1Controller(),
              builder: (value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("GetX (Create): ${value.valorTeste}"),
                );
              },
            ),
            GetX<Page1Controller>(
              init: controller,
              builder: (value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("GetX (Instância): ${value.valorTeste}"),
                );
              },
            ),
            GetX<Page1Controller>(
              init: Get.find<Page1Controller>(),
              builder: (value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("GetX (Get.find): ${value.valorTeste}"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
