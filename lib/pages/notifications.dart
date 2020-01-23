import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  Future<void> _refreshNotifications() async {}

  Map<String, IconData> _iconMapping = {
    "complete": FontAwesomeIcons.clipboardCheck,
    "buyerTip": Icons.monetization_on,
    "congrats": FontAwesomeIcons.award,
    "delivery": FontAwesomeIcons.envelopeOpenText
  };
  var _notifications = [
    {
      "icon": "delivery",
      "notification": "brad left a 5 star review. 3d ago",
      "hasRead": false
    },
    {
      "icon": "delivery",
      "notification": "chad left a 5 star review. 3d ago",
      "hasRead": false
    },
    {
      "icon": "complete",
      "notification":
          "fedminz's order was automatically marked as complete. 6d ago",
      "hasRead": true
    },
    {
      "icon": "buyerTip",
      "notification": "ninny left you a Tip. 1w ago",
      "hasRead": false
    },
    {
      "icon": "buyerTip",
      "notification": "ninny left you a Tip. 1w ago",
      "hasRead": true
    },
    {
      "icon": "buyerTip",
      "notification": "ninny left you a Tip. 1w ago",
      "hasRead": true
    },
    {
      "icon": "congrats",
      "notification": "Congrats! You're now a Level One Seller!",
      "hasRead": true
    },
    {
      "icon": "complete",
      "notification":
          "fedminz's order was automatically marked as complete. 6d ago",
      "hasRead": true
    },
    {
      "icon": "buyerTip",
      "notification": "ninny left you a Tip. 1w ago",
      "hasRead": true
    },
    {
      "icon": "delivery",
      "notification": "brad left a 5 star review. 3d ago",
      "hasRead": true
    },
    {
      "icon": "buyerTip",
      "notification": "adam left you a Tip. 1w ago",
      "hasRead": true
    },
    {
      "icon": "complete",
      "notification":
          "gina's order was automatically marked as complete. 6d ago",
      "hasRead": true
    },
    {
      "icon": "complete",
      "notification":
          "lamdz's order was automatically marked as complete. 6d ago",
      "hasRead": true
    },
    {
      "icon": "buyerTip",
      "notification": "ninny left you a Tip. 1w ago",
      "hasRead": true
    },
    {
      "icon": "complete",
      "notification":
          "sasha's order was automatically marked as complete. 6d ago",
      "hasRead": true
    },
    {
      "icon": "complete",
      "notification":
          "kitty's order was automatically marked as complete. 6d ago",
      "hasRead": true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshNotifications,
        color: Colors.black87,
        child: ListView.builder(
            itemCount: _notifications.length,
            itemBuilder: (context, int index) {
              return InkWell(
                onTap: () {},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  color: _notifications[index]['hasRead']
                      ? Colors.white12
                      : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0),
                    child: ListTile(
                      leading: Icon(
                        _iconMapping[_notifications[index]['icon']],
                        size: 25.0,
                        color: _notifications[index]['hasRead']
                            ? Colors.grey
                            : Colors.black87
//                            : Theme.of(context).accentColor,
                      ),
                      title: Text(
                        _notifications[index]['notification'],
                        style: TextStyle(
                          color: _notifications[index]['hasRead']
                              ? Colors.grey
                              : Colors.black87,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
