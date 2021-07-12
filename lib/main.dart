import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp_01/pages/home_page.dart';
import 'package:myapp_01/pages/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme()
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark
        ),
        initialRoute:"/home",
        routes: {
          "/": (context)=>LoginPage(),
          "/home":(context) =>LoginPage(),
          "/login":(context) =>LoginPage()
        },
    );
  }
}
