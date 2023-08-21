// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, avoid_unnecessary_containers, depend_on_referenced_packages

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:snake_guard/views/alert_list_ui.dart';
import 'package:snake_guard/views/summarize_ui.dart';
import 'package:snake_guard/views/home_ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('en', 'GB'), // English, UK
      Locale('ar', 'AE'), // Arabic, UAE
      Locale('en', 'IN'), // English, India
    ],
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<dynamic> _page = [
    AlertListUI(),
    HomeUI(),
    SummarizeUI(),
  ];
  int _activePage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(49, 66, 71, 1),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          index: _activePage,
          items: <Widget>[
            Icon(Icons.notifications, size: MediaQuery.of(context).size.width * 0.08, color: Colors.white),
            Icon(Icons.home, size: MediaQuery.of(context).size.width * 0.08, color: Colors.white),
            Icon(Icons.view_list, size: MediaQuery.of(context).size.width * 0.08, color: Colors.white),
          ],
          backgroundColor: Color.fromARGB(255, 80, 155, 240),
          color: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _activePage = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          child: Center(
            child: _page[_activePage],
          ),
        ));
  }
}
