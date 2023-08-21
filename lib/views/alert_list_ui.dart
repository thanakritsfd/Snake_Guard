// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use, unused_field, prefer_final_fields, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snake_guard/views/alert_description_ui.dart';
import 'package:snake_guard/model/alert_list.dart';

class AlertListUI extends StatefulWidget {
  const AlertListUI({super.key});

  @override
  State<AlertListUI> createState() => _AlertListUIState();
}

class _AlertListUIState extends State<AlertListUI> {
  DateTime date = DateTime.now();

  //ตัวแปรเก็บข้อมูลของร้านแต่ละร้านที่เอาไปใช้กับ listview
  List<AlertList> _alertList = [
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake1.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake2.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake3.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake1.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake2.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake3.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake1.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake2.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake3.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake1.jpg',
      datetime: DateTime.now(),
    ),
    AlertList(
      description: 'ตรวจพบงู!!',
      image: 'snake2.jpg',
      datetime: DateTime.now(),
    ),
  ];

  //ตัวแปรเก็บ index เริ่มต้นของ carousel
  int _carouselCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 167, 208, 252), Color.fromARGB(255, 80, 155, 240)], // สีเริ่มต้นและสิ้นสุดของการไล่เฉด
            begin: Alignment.topCenter, // จุดเริ่มต้น (ด้านบนกลาง)
            end: Alignment.bottomCenter, // จุดสิ้นสุด (ด้านล่างกลาง)
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.15,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18), // <-- Radius
                    ),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      locale: const Locale('en', 'IN'),
                      // initialEntryMode: DatePickerEntryMode.calendarOnly,
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2023),
                      lastDate: DateTime.now(),
                      builder: (context, child) => Theme(
                        data: ThemeData().copyWith(
                          textTheme: TextTheme(
                            headline1: GoogleFonts.itim(), // Selected Date
                            headline2: GoogleFonts.itim(),
                            headline3: GoogleFonts.itim(),
                            headline4: GoogleFonts.itim(),
                            headline5: GoogleFonts.itim(),
                            headline6: GoogleFonts.itim(),
                            overline: GoogleFonts.itim(), // Title - SELECT DATE
                            bodyText1: GoogleFonts.itim(), // year gridbview picker
                            subtitle1: GoogleFonts.itim(color: Colors.white), // input
                            subtitle2: GoogleFonts.itim(), // month/year picker
                            caption: GoogleFonts.itim(), // days
                          ),
                          colorScheme: ColorScheme.dark(
                            primary: Color.fromRGBO(49, 66, 71, 1), // header background color
                            onPrimary: Colors.white, // select day color
                            onSurface: Colors.white, // body text color
                          ),
                          dialogBackgroundColor: Colors.black,
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white, // button text color
                              textStyle: GoogleFonts.itim(),
                            ),
                          ),
                          inputDecorationTheme: InputDecorationTheme(
                            labelStyle: GoogleFonts.itim(), // Input label
                          ),
                        ),
                        child: child!,
                      ),
                    );

                    //if 'CANCEL' => null
                    if (newDate == null) return;

                    //if 'OK' => DateTime
                    setState(
                      () => date = newDate,
                    );
                  },
                  icon: Icon(Icons.calendar_today),
                  label: Text(
                    '${date.day}/${date.month}/${date.year}',
                    style: GoogleFonts.itim(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  child: ListView.separated(
                    padding: MediaQuery.of(context).padding.copyWith(
                          top: 0,
                          bottom: 0,
                        ),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.grey[700],
                      );
                    },
                    itemCount: _alertList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlertDescriptionUI(),
                            ),
                          );
                        },
                        leading: ClipOval(
                          child: Image.asset(
                            'assets/images/' + _alertList[index].image!,
                            width: 60, // ขนาดกว้างของรูปภาพ
                            height: 60, // ขนาดสูงของรูปภาพ
                            fit: BoxFit.cover, // การจัดการการตั้งแต่งภาพ
                          ),
                        ),
                        title: Text(
                          'ตรวจพบงู!!',
                          style: GoogleFonts.kanit(),
                        ),
                        subtitle: Text(
                          'เวลา 08:00 น.',
                          style: GoogleFonts.kanit(),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      );
                    },
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
