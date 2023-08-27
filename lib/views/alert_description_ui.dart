// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_declarations, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snake_guard/model/alert_list.dart';
import 'package:url_launcher/url_launcher.dart';

class AlertDescriptionUI extends StatefulWidget {
//สร้างตัวแปรเก็บค่าที่จะส่งมา
  AlertList? alertList;
//เอาตัวแปรที่สร้างมากำหนดเป็น parameter เพื่อเอาไปไว้รับค่าที่จะส่งมา
  AlertDescriptionUI({super.key, this.alertList});

  @override
  State<AlertDescriptionUI> createState() => _AlertDescriptionUIState();
}

class _AlertDescriptionUIState extends State<AlertDescriptionUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey[300],
              height: 1.0,
            ),
            preferredSize: const Size.fromHeight(2.0)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'รายละเอียด',
          style: GoogleFonts.kanit(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 7, // ขนาดเส้นขอบ
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/${widget.alertList!.image!}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  'วันที่ : 27/08/2023',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'เวลา : 08:00 น.',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      final phoneNumber = '199';
                      _makePhoneCall(phoneNumber);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.06,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'แจ้งหน่วยกู้ภัย',
                          style: GoogleFonts.prompt(
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
