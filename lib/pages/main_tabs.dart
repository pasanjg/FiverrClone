import 'package:flutter/material.dart';

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
      IconButton(
        icon: Icon(Icons.person),
        onPressed: () {},
      )
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
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            )
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
              icon: Icon(Icons.help_outline),
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
                Icons.settings,
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
