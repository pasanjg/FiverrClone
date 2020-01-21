import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_fiverr_clone/pages/home.dart';
import 'package:flutter_fiverr_clone/pages/message_inbox.dart';

class MainTabs extends StatefulWidget {
  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int _selectedIndexForBottomNavigationBar;

  String _appBarTitle;
  List<Widget> _appBarActions;

  @override
  void initState() {
    super.initState();
    _selectedIndexForBottomNavigationBar = 0;
    _appBarTitle = "pasanjg";
    _appBarActions = [
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
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s"),
                ),
                Container(
                  child: CircleAvatar(
                    radius: 5.0,
                    backgroundColor: Color(0xFF1DBF73),
                  ),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFFFFFFF), // border color
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              ],
            ),
          ),
        ),
      ),
    ];
    controller = TabController(
        vsync: this,
        length: _listOfPagesForBottomNavigationBar.length,
        initialIndex: 1);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  setAppBarTitle(int index) {
    switch (_selectedIndexForBottomNavigationBar) {
      case 0:
        {
          _appBarTitle = "pasanjg";
        }
        break;
      case 1:
        {
          _appBarTitle = "Inbox";
        }
        break;
      case 2:
        {
          _appBarTitle = "Manage Sales";
        }
        break;
      case 3:
        {
          _appBarTitle = "Notifications";
        }
        break;
      case 4:
        {
          _appBarTitle = "";
        }
        break;
    }
  }

  List<Widget> setAppBarActions(int index) {
    switch (_selectedIndexForBottomNavigationBar) {
      case 0:
        {
          _appBarActions = [
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
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2L-Zfe-iYizglLDH55UD3wXBJre7V98QwKfsBCfR_8YfvXPnN&s"),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Color(0xFF1DBF73),
                        ),
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFFFFFFF), // border color
                            border:
                                Border.all(color: Colors.white, width: 2)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        }
        break;
      case 1:
        {
          _appBarActions = [
            IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {},
            )
          ];
        }
        break;
      case 2:
        {
          _appBarActions = [
            IconButton(
              icon: Icon(FontAwesomeIcons.questionCircle),
              onPressed: () {},
            )
          ];
        }
        break;
      case 3:
        {
          _appBarActions = [];
        }
        break;
      case 4:
        {
          _appBarActions = [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.cog,
                color: Colors.grey,
              ),
              onPressed: () {},
            )
          ];
        }
        break;
    }
    return _appBarActions;
  }

  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
      setAppBarTitle(index);
      setAppBarActions(index);
    });
  }

  static List<Widget> _listOfPagesForBottomNavigationBar = <Widget>[
    HomePage(),
    MessageInboxPage(),
    Text("Sales"),
    Text("Notifications"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        elevation: 0.5,
        actions: _appBarActions,
      ),
      body: _listOfPagesForBottomNavigationBar[
          _selectedIndexForBottomNavigationBar],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTappedForBottomNavigationBar,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.envelope),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clipboard),
            title: Text('Sales'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
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
