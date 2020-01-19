import 'package:flutter/material.dart';
import 'package:flutter_fiverr_clone/pages/home.dart';

void main() {
  runApp(FiverrClone());
}

class FiverrClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.greenAccent),
      home: HomePage(),
    );
  }
}
