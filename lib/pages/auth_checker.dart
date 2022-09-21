import 'package:ecommerce/pages/my_home_page.dart';
import 'package:ecommerce/pages/tabs/home_page.dart';
import 'package:ecommerce/pages/signIn.dart';
import 'package:ecommerce/service/auth_service.dart';
import 'package:ecommerce/views/admin/admin_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthChecker extends StatefulWidget {
  const AuthChecker({Key? key}) : super(key: key);

  @override
  State<AuthChecker> createState() => _AuthCheckerState();
}

class _AuthCheckerState extends State<AuthChecker> {
  @override
  void initState() {
    super.initState();
    checkIfLoggedIn();
  }

  checkIfLoggedIn() async {
    AuthService authService = AuthService();
    var token = await authService.getToken();
    print(token);
    if (token != null) {
      var isAdmin = await authService.getIsAdmin();
      if (isAdmin) {
        Get.off(() => const AdminHome());
      } else {
        Get.off(() => MyHomePage());
      }
      // Get.to(MyHomePage());
    } else {
      Get.to(() => SignIn());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
