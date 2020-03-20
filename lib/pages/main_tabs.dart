import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:fiverr_clone/pages/home.dart';
import 'package:fiverr_clone/pages/manage_account.dart';
import 'package:fiverr_clone/pages/manage_sales.dart';
import 'package:fiverr_clone/pages/message_inbox.dart';
import 'package:fiverr_clone/pages/notifications.dart';

class MainTabs extends StatefulWidget {
  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int _selectedIndexForBottomNavigationBar;

  @override
  void initState() {
    super.initState();
    _selectedIndexForBottomNavigationBar = 0;
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

  void _onItemTappedForBottomNavigationBar(int index) {
    setState(() {
      _selectedIndexForBottomNavigationBar = index;
    });
  }

  static List<Widget> _listOfPagesForBottomNavigationBar = <Widget>[
    HomePage(),
    MessageInboxPage(),
    ManageSales(),
    Notifications(),
    ManageAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPagesForBottomNavigationBar[
          _selectedIndexForBottomNavigationBar],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTappedForBottomNavigationBar,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Feather.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.mail),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.clipboard),
            title: Text('Sales'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.bell),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndexForBottomNavigationBar,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Color(0xFF404040),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
