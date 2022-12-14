import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final AuthenticationController authenticationController =
      Get.find<AuthenticationController>();
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('Home'),
            ),
            ElevatedButton(
                onPressed: () => authenticationController.signOut(),
                child: const Text("Sign Out"))
          ],
        ),
      ),
    );
  }
}