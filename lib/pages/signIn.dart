import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:ecommerce/views/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final AuthenticationController authenticationController =
      Get.put(AuthenticationController());

  // LoginPage({super.key});

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  SignIn({Key? key}) : super(key: key);

  String name = "";

  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome  " + name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(children: [
                  CustomTextField(
                      controller: emailController,
                      // decoration: InputDecoration(
                      //     hintText: "Enter Email", labelText: "Email"),
                      // onChanged: (value) {
                      //   name = value;
                      // },
                      validator: (value) {
                        if (!value!.contains('@')) {
                          return 'Please Enter valid email';
                        }
                        // if (value.contains("@") == false) {
                        //   return 'Please enter valid email';
                        // }
                        return null;
                      }),
                  CustomTextField(
                    controller: passwordController,
                    // obscureText: true,
                    // decoration: InputDecoration(
                    //     hintText: "Enter Password", labelText: "Password"),
                    label: 'password',
                    isPassword: true,
                    validator: (value) {
                      if (value!.length < 7) {
                        return 'Please enter valid password';
                      }
                      // if (value.length < 6) {
                      //   return 'Password should contain at least 6 charactere';
                      // }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var isValid = formKey.currentState!.validate();

                        if (isValid) {
                          var data = {
                            'email': emailController.text,
                            'password': passwordController.text
                          };
                          print(data);
                          authenticationController.signUp(data);
                        }
                      },
                      child: const Text("SignIn"))
                ]),
              )
            ],
          ),
        ));
  }
}
