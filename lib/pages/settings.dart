import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String currencyDropdownValue = "\$ USD";
  bool isOut = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  "Notifications",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  "Notifications sound",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Currency",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    DropdownButton<String>(
                      value: currencyDropdownValue,
                      icon: Icon(null),
                      iconSize: 15,
                      elevation: 16,
                      underline: Container(
                        height: 0.0,
                        color: Colors.grey,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          currencyDropdownValue = newValue;
                        });
                      },
                      items: <String>["\$ USD", "LKR", "INR", "AUD"]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  "Terms of service",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  "Privacy policy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Out of Office mode",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    Switch(
                      value: isOut,
                      onChanged: (value) {
                        setState(() {
                          isOut = value;
                        });
                      },
                      activeTrackColor: Color(0xFF8bd9ad),
                      activeColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerLeft,
              height: 60.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black38,
                    width: 1,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60.0,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Version 3.0.5",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
