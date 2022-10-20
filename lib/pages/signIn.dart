import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:ecommerce/pages/signup.dart';
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
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          "assets/images/try.jpg",
          fit: BoxFit.cover,
          // color: Colors.black.withOpacity(0.10),
          // colorBlendMode: BlendMode.darken,
        )),
        ListView(children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                // Image.asset(
                //   "assets/images/logins.jpg",
                //   height: 200,
                //   width: 200,
                // ),
                ClipOval(
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.pink),
                    child: Image.asset(
                      "assets/images/scissors.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Welcome Back" + name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(children: [
                    CustomTextField(
                        icon: Icons.email,
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
                      icon: Icons.lock,
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
                    InkWell(
                      onTap: () {
                        print("Clicked");
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF6A62B7),
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Obx(() => Container(
                          child: authenticationController.isLoading.value
                              ? const CircularProgressIndicator()
                              : InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    var isValid =
                                        formKey.currentState!.validate();

                                    if (isValid) {
                                      var data = {
                                        'email': emailController.text,
                                        'password': passwordController.text
                                      };
                                      print(data);
                                      authenticationController.signIn(data);
                                    }
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 500,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xFF6A62B7)),
                                    child: Center(
                                        child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )),
                                  ),
                                ),
                        ))
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style:
                            TextStyle(color: Color(0xFF6A62B7), fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(SignUp());
                          },
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Color(0xFF6A62B7)),
                          ))
                    ],
                  ),
                )
                // ElevatedButton(
                //     onPressed: () {
                //       Get.to(SignUp());
                //     },
                //     child: Text("Create Account"))
              ],
            ),
          )
        ])
      ],
    ));
  }
}     
      
        // color: Color(0xFFE5E5E5),
        // child: Form(
        //   key: formKey,
        //   child: Column(
        //     children: [
        //       Image.asset(
        //         "assets/images/logins.jpg",
        //         fit: BoxFit.cover,
        //       ),
        //       Text(
        //         "Welcome Back" + name,
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.symmetric(
        //             vertical: 16.0, horizontal: 32.0),
        //         child: Column(children: [
        //           CustomTextField(
        //               icon: Icons.email,
        //               controller: emailController,
        //               // decoration: InputDecoration(
        //               //     hintText: "Enter Email", labelText: "Email"),
        //               // onChanged: (value) {
        //               //   name = value;
        //               // },
        //               validator: (value) {
        //                 if (!value!.contains('@')) {
        //                   return 'Please Enter valid email';
        //                 }
        //                 // if (value.contains("@") == false) {
        //                 //   return 'Please enter valid email';
        //                 // }
        //                 return null;
        //               }),
        //           CustomTextField(
        //             icon: Icons.lock,
        //             controller: passwordController,
        //             // obscureText: true,
        //             // decoration: InputDecoration(
        //             //     hintText: "Enter Password", labelText: "Password"),
        //             label: 'password',
        //             isPassword: true,
        //             validator: (value) {
        //               if (value!.length < 6) {
        //                 return 'Please enter valid password';
        //               }
        //               // if (value.length < 6) {
        //               //   return 'Password should contain at least 6 charactere';
        //               // }
        //               return null;
        //             },
        //           ),
        //           InkWell(
        //             onTap: () {
        //               print("Clicked");
        //             },
        //             child: Align(
        //               alignment: Alignment.centerRight,
        //               child: Text(
        //                 "Forgot Password",
        //                 style: TextStyle(
        //                     decoration: TextDecoration.underline,
        //                     color: Color(0xFF6A62B7)),
        //               ),
        //             ),
        //           ),
        //           SizedBox(
        //             height: 20,
        //             width: 20,
        //           ),
        //           Obx(() => Container(
        //                 child: authenticationController.isLoading.value
        //                     ? const CircularProgressIndicator()
        //                     : InkWell(
        //                         borderRadius: BorderRadius.circular(30),
        //                         onTap: () {
        //                           var isValid =
        //                               formKey.currentState!.validate();

        //                           if (isValid) {
        //                             var data = {
        //                               'email': emailController.text,
        //                               'password': passwordController.text
        //                             };
        //                             print(data);
        //                             authenticationController.signIn(data);
        //                           }
        //                         },
        //                         child: Container(
        //                           height: 50,
        //                           width: 500,
        //                           decoration: BoxDecoration(
        //                               borderRadius: BorderRadius.circular(30),
        //                               color: Color(0xFF6A62B7)),
        //                           child: Center(
        //                               child: Text(
        //                             "LOGIN",
        //                             style: TextStyle(
        //                                 color: Colors.white, fontSize: 18),
        //                           )),
        //                         ),
        //                       ),
        //               ))
        //         ]),
        //       ),
        //       Align(
        //         alignment: Alignment.bottomCenter,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               "Don't have an account?",
        //               style: TextStyle(color: Color(0xFF6A62B7)),
        //             ),
        //             SizedBox(
        //               width: 20,
        //             ),
        //             InkWell(
        //                 onTap: () {
        //                   Get.to(SignUp());
        //                 },
        //                 child: Text(
        //                   "Create Account",
        //                   style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       decoration: TextDecoration.underline,
        //                       color: Color(0xFF6A62B7)),
        //                 ))
        //           ],
        //         ),
        //       )
              // ElevatedButton(
              //     onPressed: () {
              //       Get.to(SignUp());
              //     },
              //     child: Text("Create Account"))
        //     ],
        //   ),
        // ));
  // }
// }

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