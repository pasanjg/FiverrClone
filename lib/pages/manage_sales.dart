import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManageSales extends StatefulWidget {
  @override
  _ManageSalesState createState() => _ManageSalesState();
}

class _ManageSalesState extends State<ManageSales> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Manage Sales"),
          actions: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.questionCircle),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                text: "COMPLETED (102)",
              ),
              Tab(
                text: "CANCELLED (3)",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("Completed Orders"),
            Text("Cancelled Orders"),
          ],
        ),
      ),
    );
  }
}
