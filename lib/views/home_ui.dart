// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, sort_child_properties_last, avoid_print
// import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 94, 112, 133),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.2,
              ),
              Text(
                'Home',
                style: GoogleFonts.itim(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
