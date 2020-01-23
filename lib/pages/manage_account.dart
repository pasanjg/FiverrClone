import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManageAccount extends StatefulWidget {
  @override
  _ManageAccountState createState() => _ManageAccountState();
}

class _ManageAccountState extends State<ManageAccount> {
  bool isSeller = true;
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.cog,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.black87,
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 40.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s"),
                                ),
                                Container(
                                  child: CircleAvatar(
                                    radius: 6.0,
                                    backgroundColor: Color(0xFF1DBF73),
                                  ),
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFFFFFFF),
                                    // border color
                                    border: Border.all(
                                        color: Colors.black87, width: 2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "pasanjg",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "My personal balance: US\$65.90",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
              Card(
                elevation: 8.0,
                child: Container(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ListTile(
                    leading: Icon(
                      Icons.credit_card,
                      color: Theme.of(context).accentColor,
                    ),
                    title: Text(
                      "Seller mode",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Switch(
                      value: isSeller,
                      onChanged: (value) {
                        setState(() {
                          isSeller = value;
                        });
                      },
                      activeTrackColor: Color(0xFF8bd9ad),
                      activeColor: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 5.0),
                  child: Text(
                    "My Fiverr",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text(
                      "Earnings",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.solidStickyNote),
                    title: Text(
                      "Buyers requests",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.fileMedicalAlt),
                    title: Text(
                      "Offer templates",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.bullhorn),
                    title: Text(
                      "Promote my gigs",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.windowMaximize),
                    title: Text(
                      "My gigs",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 5.0),
                  child: Text(
                    "General",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.user),
                    title: Text(
                      "My profile",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.circleNotch),
                    title: Text(
                      "Online status",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Switch(
                      value: isOnline,
                      onChanged: (value) {
                        setState(() {
                          isOnline = value;
                        });
                      },
                      activeTrackColor: Color(0xFF8bd9ad),
                      activeColor: Theme.of(context).accentColor,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.paperPlane),
                    title: Text(
                      "Invite friends",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(FontAwesomeIcons.lifeRing),
                    title: Text(
                      "Support",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
