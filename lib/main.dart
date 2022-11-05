import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task2/aboutme.dart';
import 'package:task2/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadowColor: Colors.blueGrey,
          color: Colors.grey.shade300,
        ),
      ),
      darkTheme: ThemeData(
          primaryTextTheme: TextTheme(
            bodyLarge: GoogleFonts.roboto(fontSize: 30),
          ),
          scaffoldBackgroundColor: Color.fromARGB(255, 8, 8, 8),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadowColor: Colors.black,
            color: Color.fromARGB(255, 21, 21, 21),
          ),
          textTheme: TextTheme(headlineMedium: GoogleFonts.roboto())),
      home: SkillsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
