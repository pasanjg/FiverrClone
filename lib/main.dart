import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fiverr_clone/pages/main_tabs.dart';

void main() {
  runApp(FiverrClone());
}

class FiverrClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.white, accentColor: Color(0xFF1DBF73)),
      home: MainTabs(),
    );
  }
}
