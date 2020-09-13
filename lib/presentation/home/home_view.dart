import 'package:flutter/material.dart';
import 'package:flutter_getx/intrastructure/routes/app_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Exemplo GetX"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.infoCircle),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Exemplo GetX: String",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Get.toNamed(
                    Routes.PAGE1,
                    arguments: {"title": "Exemplo GetX: String"},
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Exemplo GetX: Contador",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Get.toNamed(
                    Routes.PAGE2,
                    arguments: {"title": "Exemplo GetX: Contador"},
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Exemplo GetX: Login Show/Hide Password",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Get.toNamed(Routes.PAGE3);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Exemplo GetX: Map<String,dynamic>",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Get.toNamed(Routes.PAGE4);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Exemplo GetX: Personal Class",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Get.toNamed(Routes.PAGE5);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              child: RaisedButton(
                child: Text(
                  "Exemplo GetX: List<Map<String,dynamic>>",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                color: Colors.blue[400],
                onPressed: () {
                  Get.toNamed(Routes.PAGE6);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
