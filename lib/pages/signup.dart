import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:ecommerce/views/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final AuthenticationController authenticationController =
      Get.find<AuthenticationController>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController conformpasswordController = TextEditingController();

  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: Image.asset(
        "assets/images/bg.jpg",
        fit: BoxFit.cover,
        // color: Colors.black.withOpacity(0.10),
        // colorBlendMode: BlendMode.darken,
      )),
      ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Center(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )),
                CustomTextField(
                  icon: Icons.lock,
                  controller: nameController,
                  label: 'Name',
                  isPassword: false,
                  validator: (value) {
                    if (value!.length < 1) {
                      return 'Please enter Your full name';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  icon: Icons.mail,
                  controller: emailController,
                  validator: (value) {
                    if (!value!.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  icon: Icons.lock,
                  controller: passwordController,
                  label: 'Password',
                  isPassword: true,
                  validator: (value) {
                    if (value!.length < 6) {
                      return 'Please enter a valid password';
                    }
                    return null;
                  },
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
                    child: const Text("SignUp")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Login"))
              ],
            ),
          ),
        ),
      ]),
    ]));
  }
}

// // -----------------------------------------------------------------------------

// import 'package:ecommerce/controllers/authentication_controller.dart';
// import 'package:ecommerce/views/components/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SignUp extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   final AuthenticationController authenticationController =
//       Get.find<AuthenticationController>();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   SignUp({Key? key}) : super(key: key);

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
//                   'Sign Up',
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
//                 ElevatedButton(
//                     onPressed: () {
//                       var isValid = formKey.currentState!.validate();
//                       if (isValid) {
//                         var data = {
//                           'email': emailController.text,
//                           'password': passwordController.text
//                         };
//                         print(data);
//                         authenticationController.signUp(data);
//                       }
//                     },
//                     child: const Text("SignUp"))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// -------------------------------------------------------------------------------------------
// import 'package:ecommerce/controllers/authentication_controller.dart';
// import 'package:ecommerce/views/components/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// class SignUp extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   final AuthenticationController authenticationController =
//       Get.find<AuthenticationController>();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   SignUp({Key? key}) : super(key: key);

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
//                   'Sign Up',
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
//                 ElevatedButton(
//                     onPressed: () {
//                       var isValid = formKey.currentState!.validate();
//                       if (isValid) {
//                         var data = {
//                           'email': emailController.text,
//                           'password': passwordController.text
//                         };
//                         print(data);
//                         authenticationController.signUp(data);
//                       }
//                     },
//                     child: const Text("SignUp"))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
