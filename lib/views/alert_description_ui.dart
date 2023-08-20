// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snake_guard/model/alert_list.dart';

class AlertDescriptionUI extends StatefulWidget {
//สร้างตัวแปรเก็บค่าที่จะส่งมา
  AlertList? alertList;
//เอาตัวแปรที่สร้างมากำหนดเป็น parameter เพื่อเอาไปไว้รับค่าที่จะส่งมา
  AlertDescriptionUI({super.key, this.alertList});

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
