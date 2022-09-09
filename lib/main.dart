import 'package:ecommerce/pages/LoginPage.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/utils/route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          fontFamily: GoogleFonts.kadwa().fontFamily),
      routes: {
        "/": (context) => LoginPage(),
        route.homeRoute: (context) => HomePage(),
        route.loginRoute: (context) => LoginPage()
      },
    );
  }
}
