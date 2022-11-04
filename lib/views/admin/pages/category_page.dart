// import 'package:ecommerce/views/components/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../components/admin_button.dart';

// class Categories extends StatelessWidget {
//   const Categories({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           AdminButton(
//             onTap: () {
//               Get.bottomSheet(
//                 Container(
//                   height: 200,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomTextField(
//                         label: 'Category Name',
//                         controller: TextEditingController(),
//                         validator: (value) {
//                           if (!value!.contains('@')) {
//                             return 'Please enter a valid email';
//                           }
//                           return null;
//                         },
//                       ),
//                       ElevatedButton(
//                           onPressed: () {}, child: const Text("submit"))
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//           const Center(
//             child: Text('Categories'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:ecommerce/views/admin/components/admin_button.dart';
// import 'package:ecommerce/views/components/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Categories extends StatelessWidget {
//   const Categories({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(),
//       body: Wrap(
//         children: [

//           AdminButton(
//             icon: Icons.add,
//             coloring: Colors.purple.shade100,
//             onTap: () {
//               Get.bottomSheet(
//                 Container(
//                   height: 200,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomTextField(
//                         label: 'Category Name',
//                         controller: TextEditingController(),
//                         validator: (value) {
//                           if (!value!.contains('')) {
//                             return 'Please enter a category name here';
//                           }
//                           return null;
//                         },
//                       ),
//                       ElevatedButton(
//                           onPressed: () {}, child: const Text("submit"))
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),

//           AdminButton(
//             icon: Icons.image,
//             coloring: Colors.red.shade100,
//             title: ("Add image"),
//             onTap: () {
//               Get.bottomSheet(
//                 Container(
//                   height: 200,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomTextField(
//                         label: 'Add Image',
//                         controller: TextEditingController(),
//                         validator: (value) {
//                           if (!value!.contains('')) {
//                             return 'Please enter a category name here';
//                           }
//                           return null;
//                         },
//                       ),
//                       ElevatedButton(
//                           onPressed: () {}, child: const Text("submit"))
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),

//           AdminButton(
//             icon: Icons.text_format,
//             coloring: Colors.red.shade100,
//             title: "Add description",
//             onTap: () {
//               Get.bottomSheet(
//                 Container(
//                   height: 200,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomTextField(
//                         label: 'Add description',
//                         controller: TextEditingController(),
//                         validator: (value) {
//                           if (!value!.contains('')) {
//                             return 'Please enter a category name here';
//                           }
//                           return null;
//                         },
//                       ),
//                       ElevatedButton(
//                           onPressed: () {}, child: const Text("submit"))
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),

//           AdminButton(
//             icon: Icons.add,
//             title: "Show Category",
//             coloring: Colors.purple.shade100,
//             onTap: () {
//               Get.bottomSheet(
//                 Container(
//                   height: 200,
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomTextField(
//                         label: 'Show Categories',
//                         controller: TextEditingController(),
//                         validator: (value) {
//                           if (!value!.contains('')) {
//                             return 'Please enter a category name here';
//                           }
//                           return null;
//                         },
//                       ),
//                       ElevatedButton(
//                           onPressed: () {}, child: const Text("submit"))
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),

//           // const Center(
//           //   child: Text('Categories'),
//           // ),
//         ],
//       ),
//     );
//   }
// }

import 'package:ecommerce/views/admin/components/add_category.dart';
import 'package:ecommerce/views/admin/components/add_product.dart';
import 'package:ecommerce/views/admin/components/admin_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AdminButton(
              onTap: () {
                Get.bottomSheet(AddCategory(
                    nameController: TextEditingController(),
                    descriptionController: TextEditingController()));
              },
              icon: Icons.add),
          const Center(
            child: Text('Categories'),
          ),
          AdminButton(
            onTap: () {
              Get.bottomSheet(
                
                
                AddProduct(
                
                nameController: TextEditingController(),
                descriptionController: TextEditingController(),
                category_IdContoller: TextEditingController(),
                priceContoller: TextEditingController(),
                imageController: TextEditingController(),
              ));
            },
            icon: Icons.add,
            title: "Add Product",
          ),
          const Center(
            child: Text('Product'),
          ),
        ],
      ),
    );
  }
}
