import 'package:flutter/material.dart';
import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double _requirementsTapMinHeight = 60.0;
  double _levelsHeight = 60.0;
  double _levelsMaxHeight = 380.0;
  double _defaultFontSize = 16.0;

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _refreshHome() async {}

  @override
  Widget build(BuildContext context) {
    final rotateAnimation = Tween(begin: 0.0, end: pi).animate(
      CurvedAnimation(parent: this._controller, curve: Curves.easeInOut),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("pasanjg"),
        actions: <Widget>[
          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 36.0,
                height: 36.0,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 18.0,
                      backgroundImage: NetworkImage(
                          "https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/6909232ef04489c9085671872acfd83e-1545655648866/de3ec62b-84f1-42f2-a5fe-aac7b14dd249.png"),
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 5.0,
                        backgroundColor: Color(0xFF1DBF73),
                      ),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFFFFFFF), // border color
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Colors.black87,
        onRefresh: _refreshHome,
        child: ListView(
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
                              FontAwesomeIcons.questionCircle,
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
                        _levelsHeight =
                            _levelsHeight == _requirementsTapMinHeight
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
                            FontAwesomeIcons.angleDown,
                            color: Colors.grey,
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
            Container(
              height: 50.0,
              child: ListTile(
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
                                text: "1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: " (US\$20)",
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
            Container(
              height: 40.0,
              child: ListTile(
                title: Text(
                  "To-Dos",
                  style: TextStyle(
                    color: Colors.black38,
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
                      Padding(
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
                              border:
                                  Border.all(width: 1.0, color: Colors.black38),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
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
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, bottom: 8.0),
                        child: ListTile(
                          title: Text(
                            "New Order",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text("Start working and get things going!"),
                          trailing: Container(
                            height: 30.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: Colors.black38),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 40.0,
              child: ListTile(
                title: Text(
                  "My Gigs",
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                elevation: 2,
                child: Container(
                  height: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 8.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Overall statistics",
                            ),
                            Text(
                              "Last 7 days",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Views",
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "46",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      FontAwesomeIcons.arrowDown,
                                      color: Colors.red,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Impressions",
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "574",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      FontAwesomeIcons.arrowDown,
                                      color: Colors.red,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Social Clicks",
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.grey,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Clicks",
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "18",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      FontAwesomeIcons.arrowUp,
                                      color: Theme.of(context).accentColor,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 15.0),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Conversion",
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "0.95%",
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      FontAwesomeIcons.arrowUp,
                                      color: Theme.of(context).accentColor,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
