import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManageSales extends StatefulWidget {
  @override
  _ManageSalesState createState() => _ManageSalesState();
}

class _ManageSalesState extends State<ManageSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Manage Sales"),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.questionCircle),
            onPressed: () {},
          )
        ],
      ),
      body: Container(),
    );
  }
}
