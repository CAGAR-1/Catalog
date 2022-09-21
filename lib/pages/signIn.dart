import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:ecommerce/views/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final AuthenticationController authenticationController =
      Get.find<AuthenticationController>();

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
                      if (value!.length < 6) {
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
                  Obx(
                    () => Container(
                      child: authenticationController.isLoading.value
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: () {
                                var isValid = formKey.currentState!.validate();

                                if (isValid) {
                                  var data = {
                                    'email': emailController.text,
                                    'password': passwordController.text
                                  };
                                  print(data);
                                  authenticationController.signIn(data);
                                }
                              },
                              child: const Text("SignIn")),
                    ),
                  )
                ]),
              )
            ],
          ),
        ));
  }
}

// ===============================================




// import 'package:ecommerce/controllers/authentication_controller.dart';
// import 'package:ecommerce/views/components/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SignIn extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   final AuthenticationController authenticationController =
//       Get.find<AuthenticationController>();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   SignIn({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Form(
//             key: formKey,
//             child: Column(
//               children: [
//                 const Center(
//                     child: Text(
//                   'Sign In',
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       fontStyle: FontStyle.italic),
//                 )),
//                 CustomTextField(
//                   controller: emailController,
//                   validator: (value) {
//                     if (!value!.contains('@')) {
//                       return 'Please enter a valid email';
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomTextField(
//                   controller: passwordController,
//                   label: 'Password',
//                   isPassword: true,
//                   validator: (value) {
//                     if (value!.length < 6) {
//                       return 'Please enter a valid password';
//                     }
//                     return null;
//                   },
//                 ),
//                 Obx(() => Container(
//                       child: authenticationController.isLoading.value
//                           ? const CircularProgressIndicator()
//                           : ElevatedButton(
//                               onPressed: () {
//                                 var isValid = formKey.currentState!.validate();
//                                 if (isValid) {
//                                   var data = {
//                                     'email': emailController.text,
//                                     'password': passwordController.text
//                                   };
//                                   print(data);
//                                   authenticationController.signIn(data);
//                                 }
//                               },
//                               child: const Text("SignIn")),
//                     ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }