// ignore_for_file: prefer_const_constructors
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:snake_guard/views/alert_description_ui.dart';
import 'package:snake_guard/views/home_ui.dart';

class AlertDetailUI extends StatefulWidget {
  const AlertDetailUI({super.key});

  @override
  State<AlertDetailUI> createState() => _AlertDetailUIState();
}

class _AlertDetailUIState extends State<AlertDetailUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 94, 112, 133),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(0, 94, 112, 133),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        index: 1,
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
