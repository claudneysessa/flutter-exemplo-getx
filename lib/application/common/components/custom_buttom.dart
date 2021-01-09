import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final Function() navigation;

  const CustomButtom({
    Key key,
    this.title,
    this.navigation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 50,
        child: RaisedButton(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          color: Colors.blue[400],
          onPressed: navigation,
        ),
      ),
    );
  }
}
