// import 'package:ecommerce/pages/signIn.dart';
// import 'package:ecommerce/pages/home_page.dart';
// import 'package:ecommerce/pages/Signup_old.dart';
// import 'package:ecommerce/utils/route.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:ecommerce/controllers/cart_controller.dart';
import 'package:ecommerce/controllers/services.dart';
import 'package:ecommerce/pages/auth_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalti/khalti.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Khalti.init(
    publicKey: 'test_public_key_196df8c10c0743f68f66d5ded92b5157',
    enabledDebugging: false,
  );
  Get.put(AuthenticationController());
  Get.put(CartController());

  runApp(GetMaterialApp(
    home: AuthChecker(),
    debugShowCheckedModeBanner: false,
  ));
}
//Color(0xFF6A62B7)
//kBackgroundColor=Color(0xFFE5E5E5)





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
//   
//
//
//      "/": (context) => SignIn(),
//         route.homeRoute: (context) => HomePage(),
//         route.loginRoute: (context) => SignIn(),
//         route.signupRoute: (context) => Signup(),
//       },
//     );
//   }
// }



/// Harek kura ko cntroller chinxa controll garna ko lagi
// arrya ma value overlape hunxa vane map ma hudaina jstai cart ma 1 add garda

//map ma key value hunxa