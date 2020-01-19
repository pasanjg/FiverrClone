import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double _levelsHeight = 60.0;
  double _requirementsTapMinHeight = 60.0;
  double _levelsMaxHeight = 400.0;
  double _defaultFontSize = 16.0;

  int _selectedIndexForBottomNavigationBar = 0;

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    this._controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final rotateAnimation = Tween(begin: 0.0, end: pi).animate(
      CurvedAnimation(parent: this._controller, curve: Curves.easeInOut),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("pasanjg"),
        elevation: 0.5,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Standards to maintain",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.help_outline,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Seller level",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Level One",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Next evaluation",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Feb 15, 2020",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Response Time",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "1 Hour",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, bottom: 20.0, left: 8.0, right: 8.0),
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Tooltip(
                              message:
                                  "Respond to 90% of the inquiries\nyou received in the last 60 days",
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              verticalOffset: 90.0,
                              padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 70.0,
                                width: 70.0,
                                alignment: Alignment.center,
                                child: Text(
                                  "100%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: Theme.of(context).accentColor),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Response\nrate",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Tooltip(
                              message:
                                  "Complete 90% of your orders,\nover the course of 60 days",
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              verticalOffset: 90.0,
                              padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 70.0,
                                width: 70.0,
                                alignment: Alignment.center,
                                child: Text(
                                  "100%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: Theme.of(context).accentColor),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Order\ncompletion",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Tooltip(
                              message:
                                  "Deliver 90% of your orders on time,\nover the course of 60 days",
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              verticalOffset: 90.0,
                              padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 70.0,
                                width: 70.0,
                                alignment: Alignment.center,
                                child: Text(
                                  "100%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: Theme.of(context).accentColor),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "On-time\ndelivery",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Tooltip(
                              message:
                                  "Maintain a 4.7 star rating or above,\nover the course of 60 days",
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              verticalOffset: 90.0,
                              padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 70.0,
                                width: 70.0,
                                alignment: Alignment.center,
                                child: Text(
                                  "5.0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: Theme.of(context).accentColor),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Positive\nrating",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 500),
            height: this._levelsHeight,
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            child: Wrap(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      // animate level requirements container
                      _levelsHeight = _levelsHeight == _requirementsTapMinHeight
                          ? _levelsMaxHeight
                          : _requirementsTapMinHeight;

                      // animate dropdown icon
                      _levelsHeight > _requirementsTapMinHeight
                          ? _controller.forward()
                          : _controller.reverse();
                    });
                  },
                  child: Container(
                    height: _requirementsTapMinHeight,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white10,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        "Next level requirements",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: AnimatedBuilder(
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: rotateAnimation.value,
                            child: child,
                          );
                        },
                        animation: rotateAnimation,
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 500),
                  opacity: _levelsHeight == _levelsMaxHeight ? 1.0 : 0.0,
                  child: Wrap(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: ListTile(
                          title: Text(
                            "Selling Seniority",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _defaultFontSize,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Complete at least 120 days as a Level One Seller.",
                              style: TextStyle(
                                color: Colors.white30,
                              ),
                            ),
                          ),
                          trailing: Text(
                            "120 / 120",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: _defaultFontSize,
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: ListTile(
                          title: Text(
                            "Orders",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: _defaultFontSize),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Receive and complete at least 50\norders (all time).",
                              style: TextStyle(color: Colors.white30),
                            ),
                          ),
                          trailing: Text(
                            "50 / 50",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: _defaultFontSize,
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: ListTile(
                          title: Text(
                            "Earnings",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: _defaultFontSize),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Earn at least \$2000 from completed orders (all time).",
                              style: TextStyle(color: Colors.white30),
                            ),
                          ),
                          trailing: Text(
                            "\$1,405 / \$2,000",
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: _defaultFontSize,
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: ListTile(
                          title: Text(
                            "Days Without Warnings",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: _defaultFontSize),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "Avoid reveiving warnings for TOS\nviolations over the course of 30 days.",
                              style: TextStyle(
                                color: Colors.white30,
                              ),
                            ),
                          ),
                          trailing: Text(
                            "50 / 50",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: _defaultFontSize,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Earnings",
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            trailing: InkWell(
              onTap: () {},
              child: Text(
                "View Details",
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
              elevation: 2,
              child: Column(
                children: <Widget>[
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.start,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.only(left: 10.0),
                          title: Text(
                            "Personal balance",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: Text(
                            "US\$65.90",
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.only(left: 10.0),
                          title: Text(
                            "Earning in January",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: Text(
                            "US\$36.70",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.start,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.only(left: 10.0),
                          title: Text(
                            "Avg. selling price",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: Text(
                            "US\$17.80",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.only(left: 10.0),
                          title: Text(
                            "Active orders",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: RichText(
                            text: TextSpan(
                              text: "0",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " (US\$0)",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.start,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.only(left: 10.0),
                          title: Text(
                            "Pending clearance",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: Text(
                            "US\$26.85",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.only(left: 10.0),
                          title: Text(
                            "Cancelled orders",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          subtitle: RichText(
                            text: TextSpan(
                              text: "0",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " (-US\$0)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "To-Dos",
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      "No Unread Messages",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                        "Your response time is great!, keep up the good work"),
                    trailing: Container(
                      height: 30.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.black38),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Center(
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTappedForBottomNavigationBar,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Sales'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndexForBottomNavigationBar,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.black87,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
