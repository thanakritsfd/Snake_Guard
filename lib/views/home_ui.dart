// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, sort_child_properties_last
// import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:snake_guard/views/alert_description_ui.dart';
import 'package:snake_guard/views/alert_detail_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 94, 112, 133),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(0, 94, 112, 133),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        index: 0,
        onTap: _navigateBottomBar,
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
