import 'package:flutter/material.dart';
import 'package:flutter_fiverr_clone/pages/profile/profile_about.dart';
import 'package:flutter_fiverr_clone/pages/profile/profile_gigs.dart';
import 'package:flutter_fiverr_clone/pages/profile/profile_reviews.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("bruce"),
          bottom: TabBar(
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                text: "ABOUT",
              ),
              Tab(
                text: "GIGS",
              ),
              Tab(
                text: "REVIEWS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[AboutPage(), GigsPage(), ReviewsPage()],
        ),
      ),
    );
  }
}
