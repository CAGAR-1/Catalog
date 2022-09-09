import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/utils/route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
   LoginPage({super.key});

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                  TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Enter Email", labelText: "Email"),
                      onChanged: (value) {
                        name = value;
                       
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter email';
                        }
                        if (value.contains("@") == false) {
                          return 'Please enter valid email';
                        }
                        return null;
                      }),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      if (value.length < 6) {
                        return 'Password should contain at least 6 charactere';
                      }
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
                          print(emailController.text);
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
