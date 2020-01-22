import 'package:flutter/material.dart';
import 'package:flutter_fiverr_clone/pages/manage_sales.dart';
import 'package:flutter_fiverr_clone/pages/notifications.dart';
import 'package:flutter_fiverr_clone/pages/profile.dart';
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
    Profile(),
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
