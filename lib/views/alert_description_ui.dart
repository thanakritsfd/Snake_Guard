// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:snake_guard/views/alert_detail_ui.dart';
import 'package:snake_guard/views/home_ui.dart';

class AlertDescriptionUI extends StatefulWidget {
  const AlertDescriptionUI({super.key});

  @override
  State<AlertDescriptionUI> createState() => _AlertDescriptionUIState();
}

class _AlertDescriptionUIState extends State<AlertDescriptionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 94, 112, 133),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(0, 94, 112, 133),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        index: 2,
        items: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeUI(),
                ),
              );
            },
            icon: Icon(Icons.home, size: MediaQuery.of(context).size.width * 0.08, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlertDetailUI(),
                ),
              );
            },
            icon: Icon(Icons.notifications, size: MediaQuery.of(context).size.width * 0.08, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlertDescriptionUI(),
                ),
              );
            },
            icon: Icon(Icons.view_list, size: MediaQuery.of(context).size.width * 0.08, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
