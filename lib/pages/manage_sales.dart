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

  var _completedOrders = [
    {
      "username": "brad",
      "online": true,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "gigTitle": "Create a glitch opener",
      "date": "20 Jan 2020",
      "price": "US\$5"
    },
    {
      "username": "femmertz",
      "online": false,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "gigTitle": "Create a professional event promo video in 24 hours",
      "date": "18 Jan 2020",
      "price": "US\$35"
    },
    {
      "username": "beep",
      "online": true,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "gigTitle": "Create an amazing flutter app",
      "date": "12 Jan 2020",
      "price": "US\$150"
    },
    {
      "username": "alex",
      "online": false,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "gigTitle": "Create a simlple logo animation",
      "date": "15 Jan 2020",
      "price": "US\$15"
    },
    {
      "username": "ninny",
      "online": false,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "gigTitle": "Create a glitch opener",
      "date": "15 Jan 2020",
      "price": "US\$5"
    },
  ];

  var _cancelledOrders = [
    {
      "username": "david",
      "online": true,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "gigTitle": "Create a flyer",
      "date": "02 Dec 2019",
      "price": "US\$25"
    },
    {
      "username": "source",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s",
      "gigTitle": "Create a professional event promo video in 24 hours",
      "date": "15 Dec 2019",
      "price": "US\$5"
    },
  ];

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
                text: "COMPLETED (${_completedOrders.length})",
              ),
              Tab(
                text: "CANCELLED (${_cancelledOrders.length})",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: _completedOrders.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: ListTile(
                          leading: Stack(
                            alignment: Alignment.bottomRight,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: NetworkImage(
                                    _completedOrders[index]['image']),
                              ),
                              Container(
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: _completedOrders[index]
                                          ['online']
                                      ? Colors.grey
                                      : Color(0xFF1DBF73),
                                ),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFFFFFFFF),
                                  // border color
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                ),
                              ),
                            ],
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _completedOrders[index]['username'],
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                _completedOrders[index]['date'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Container(
                                  height: 40.0,
                                  child: Text(
                                    _completedOrders[index]['gigTitle'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0, color: Colors.black38),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "COMPLETED",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 9.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    _completedOrders[index]['price'],
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            // =========  Cancelled Orders   ===========
            ListView.builder(
              itemCount: _cancelledOrders.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: ListTile(
                          leading: Stack(
                            alignment: Alignment.bottomRight,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20.0,
                                backgroundImage: NetworkImage(
                                    _cancelledOrders[index]['image']),
                              ),
                              Container(
                                child: CircleAvatar(
                                  radius: 5.0,
                                  backgroundColor: Color(0xFF1DBF73),
                                ),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFFFFFFFF),
                                  // border color
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                ),
                              ),
                            ],
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _cancelledOrders[index]['username'],
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                _cancelledOrders[index]['date'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Container(
                                  height: 40.0,
                                  child: Text(
                                    _cancelledOrders[index]['gigTitle'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0, color: Colors.black38),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "CANCELLED",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 9.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    _cancelledOrders[index]['price'],
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
