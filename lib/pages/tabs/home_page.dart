// import 'dart:ui';

// import 'package:ecommerce/controllers/authentication_controller.dart';
// import 'package:ecommerce/controllers/product_controller.dart';
// import 'package:ecommerce/utils/api.dart';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Homeuser extends StatefulWidget {
//   Homeuser({Key? key}) : super(key: key);

//   @override
//   State<Homeuser> createState() => _HomeuserState();
// }

// class _HomeuserState extends State<Homeuser> {
//   final AuthenticationController authenticationController =
//       Get.find<AuthenticationController>();
//   final ProductController productController = Get.put(ProductController());
//   TextEditingController search = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//   List categories = [
//     "assets/images/haircut.jpg",
//     "assets/images/makeup.jpg",
//     "assets/images/spa.jpg",
//     "assets/images/manicure.jpg",
//     "assets/images/haircut.jpg",
//   ];
//   List names = ["Haircut", "makeup", "Hair Spa", "Manicure", "Haircut"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(20),
//             child: Form(
//               key: formKey,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.search),
//                         hintText: "Find your cut",
//                         filled: true,
//                         fillColor: Color(0xFF6A62B7).withAlpha(50),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide(
//                               color: Colors.pink,
//                             ))),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Container(
//               height: 280,
//               child: ListView.builder(
//                   itemCount: 5,
//                   shrinkWrap: true,
//                   physics: BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: ((context, index) {
//                     return Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(
//                               left: index == 0 ? 0 : 20, bottom: 15, top: 5),
//                           height: 200,
//                           width: 190,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.blue,
//                             image: DecorationImage(
//                                 image: AssetImage(categories[index]),
//                                 fit: BoxFit.cover),
//                           ),
//                         ),
//                         Text(
//                           names[index],
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Container(
//                           child: Obx(() => Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: productController.products
//                                     .map((e) => Column(
//                                           children: [
//                                             SizedBox(
//                                                 height: 200,
//                                                 child: Image.network(
//                                                     BASE_URL + e["image"])),
//                                             Text(e["description"]),
//                                           ],
//                                         ))
//                                     .toList(),
//                               )),
//                         ),
//                       ],
//                     );
//                   })),
//             ),
//           ),
//           ElevatedButton(
//               onPressed: () {
//                  authenticationController.signOut();
//                 child:
//                 const Text("Sign Out");
//               },
//               child: Text("Logout"))
//         ],
//       )),
//     );
//   }
// }



// // import 'package:ecommerce/controllers/product_controller.dart';
// // import 'package:ecommerce/utils/api.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // // import 'package:git_flutter_demo/controllers/product_controller.dart';
// // // import 'package:git_flutter_demo/utils/api.dart';

// // class Homeuser extends StatelessWidget {
// //   final ProductController productController = Get.put(ProductController());
// //   Homeuser({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Obx(() => Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: productController.products
// //                   .map((e) => Column(
// //                         children: [
// //                           SizedBox(
// //                               height: 200,
// //                               child: Image.network(BASE_URL + e["image"])),
// //                           Text(e["description"]),
// //                         ],
// //                       ))
// //                   .toList(),
// //             )),
// //       ),
// //     );
// //   }
// // }





import 'package:ecommerce/controllers/product_controller.dart';
import 'package:ecommerce/views/components/product_components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../models/product.dart';

class Homeuser extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  Homeuser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(() => Wrap(
                children: productController.products
                    .map(
                        (Product product) => ProductComponent(product: product))
                    .toList(),
              )),
        ),
      ),
    );
  }
}