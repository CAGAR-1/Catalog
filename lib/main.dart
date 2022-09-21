// import 'package:ecommerce/pages/signIn.dart';
// import 'package:ecommerce/pages/home_page.dart';
// import 'package:ecommerce/pages/Signup_old.dart';
// import 'package:ecommerce/utils/route.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:ecommerce/pages/auth_checker.dart';
import 'package:ecommerce/pages/signIn.dart';
import 'package:ecommerce/pages/signup.dart';
import 'package:ecommerce/views/admin/admin_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() {
  Get.put(AuthenticationController());
  runApp(GetMaterialApp(
    home: AdminHome(),
    debugShowCheckedModeBanner: false,
  ));
}





// void main() {
//   runApp(GetMaterialApp(home: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           primarySwatch: Colors.deepOrange,
//           fontFamily: GoogleFonts.kadwa().fontFamily),
//       debugShowMaterialGrid: false,
//       initialRoute: route.loginRoute,
//       routes: {
//         "/": (context) => SignIn(),
//         route.homeRoute: (context) => HomePage(),
//         route.loginRoute: (context) => SignIn(),
//         route.signupRoute: (context) => Signup(),
//       },
//     );
//   }
// }
