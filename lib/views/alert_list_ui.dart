// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use, unused_field, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:snake_guard/views/alert_description_ui.dart';

class AlertListUI extends StatefulWidget {
  const AlertListUI({super.key});

  @override
  State<AlertListUI> createState() => _AlertListUIState();
}

class _AlertListUIState extends State<AlertListUI> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 94, 112, 133),
      body: SingleChildScrollView(
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
            ],
          ),
        ),
      ),
    );
  }
}
