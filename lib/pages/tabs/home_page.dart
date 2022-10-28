import 'dart:ui';

import 'package:ecommerce/controllers/authentication_controller.dart';
import 'package:ecommerce/views/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutterui_modifiers/TextField.dart';

class Homeuser extends StatefulWidget {
  Homeuser({Key? key}) : super(key: key);

  @override
  State<Homeuser> createState() => _HomeuserState();
}

class _HomeuserState extends State<Homeuser> {
  final AuthenticationController authenticationController =
      Get.find<AuthenticationController>();
  TextEditingController search = TextEditingController();
  final formKey = GlobalKey<FormState>();
  List categories = [
    "assets/images/haircut.jpg",
    "assets/images/makeup.jpg",
    "assets/images/spa.jpg",
    "assets/images/manicure.jpg",
    "assets/images/haircut.jpg",
  ];
  List names = ["Haircut", "makeup", "Hair Spa", "Manicure", "Haircut"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Find your cut",
                        filled: true,
                        fillColor: Color(0xFF6A62B7).withAlpha(50),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.pink,
                            ))),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 280,
              child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Column(children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 0 : 20, bottom: 15, top: 5),
                        height: 200,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(categories[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        names[index],
                        style: TextStyle(fontSize: 20),
                      )
                    ]);
                  })),
            ),
          )
        ],
      )

          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Center(
          //       child: Text('Home'),
          //     ),
          //     ElevatedButton(
          //         onPressed: () => authenticationController.signOut(),
          //         child: const Text("Sign Out"))
          //   ],
          // ),
          ),
    );
  }
}

// import 'package:flutter/material.dart';

// class JuicePage3 extends StatefulWidget {
//   late String background="";
//   late String title="";
//   late String amount="";
//   late String desc="";
//   late String location = "";

//    JuicePage3({required this.background,required this.title,required this.amount,required this.desc,required this.location});

//   @override
//   State<JuicePage3> createState() => _JuicePage3State();
// }

// class _JuicePage3State extends State<JuicePage3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Positioned.fill(
//               child: Hero(
//                 tag: widget.background,
//                 child: Image.asset(
//                   widget.background,
//                   fit: BoxFit.cover,
//                   color: Colors.black.withOpacity(0.6),
//                   colorBlendMode: BlendMode.darken,
//                 ),
//               ),
//             ),
//             ListView(
//               padding: EdgeInsets.symmetric(horizontal: 30),
//               children: [
//                 SizedBox(
//                   height: 70.0,
//                 ),
//                 Align(
//                     alignment: Alignment.topLeft,
//                     child: GestureDetector(
//                       onTap: (){
//                         Navigator.pop(context);
//                       },
//                       child: Icon(
//                         Icons.arrow_back,
//                         color: Colors.white,
//                         size: 35.0,
//                       ),
//                     )),
//                 SizedBox(
//                   height: 40.0,
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 10),
//                   height: 300,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.2),blurRadius: 5,offset: Offset(3,3),),],
//                     image: DecorationImage(
//                       image: AssetImage(widget.background),
//                       fit: BoxFit.cover,
//                     )
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                     child: Text(widget.title+"Juice",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Uchen",fontSize: 30),)),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(widget.desc,style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.w600,fontFamily: "SquarePeg",fontSize: 30),)),
//                 SizedBox(
//                   height: 25.0,
//                 ),
//                 Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(widget.location,style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.w600,fontFamily: "SquarePeg",fontSize: 30),)),
//                 SizedBox(
//                   height: 25.0,
//                 ),
//                 Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(widget.amount,style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w800,fontFamily: "Uchen",fontSize: 30),)),
//                 SizedBox(
//                   height: 50.0,
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 40),
//                   height: 50,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white,width: 1.0),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Center(child: Text("Order now",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "Uchen"),)),
//                 ),
//                 SizedBox(
//                   height: 45.0,
//                 ),
//                 Align(
//                     alignment: Alignment.center,
//                     child: Text("deliverd within 15 - 20 min",style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w800,fontFamily: "Uchen",fontSize: 20),)),
//                 SizedBox(
//                   height: 50.0,
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
