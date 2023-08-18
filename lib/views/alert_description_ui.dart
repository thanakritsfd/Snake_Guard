// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertDescriptionUI extends StatefulWidget {
  const AlertDescriptionUI({super.key});

  @override
  State<AlertDescriptionUI> createState() => _AlertDescriptionUIState();
}

class _AlertDescriptionUIState extends State<AlertDescriptionUI> {
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
                'Description',
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
