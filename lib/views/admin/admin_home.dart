import 'package:ecommerce/pages/auth_checker.dart';
import 'package:ecommerce/views/admin/components/admin_button.dart';
import 'package:ecommerce/views/admin/pages/category_page.dart';
import 'package:ecommerce/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Home'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.grey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100, top: 40, left: 10),
            child: Wrap(
              children: [
                AdminButton(
                  onTap: () => Get.to(() => Categories()),
                  icon: Icons.add,
                  // fillcolor: 0xFF42A5F5,
                  coloring: Colors.white70,
                ),
                AdminButton(
                  onTap: () {},
                  icon: Icons.shopping_cart,
                  // fillcolor: 0xFFf4d160,
                  title: "Orders",
                  coloring: Colors.white70,
                ),
                AdminButton(
                  onTap: () {},
                  icon: Icons.people,
                  // fillcolor: 0xFFf4d160,
                  title: "Customer",
                  coloring: Colors.white70,
                ),
                AdminButton(
                  onTap: () {},
                  // fillcolor: 0xFF42A5F5,
                  icon: Icons.delete,
                  title: "Delete Category",
                  coloring: Colors.white70,
                ),
                Center(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                        ),
                        height: 50,
                        width: 150,
                        child: Center(
                            child: Text(
                          "Log Out",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )))),
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}


// import 'package:ecommerce/views/admin/components/admin_button.dart';
// import 'package:ecommerce/views/admin/pages/category_page.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// class AdminHome extends StatelessWidget {
//   const AdminHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: const Text('Admin Home'),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Wrap(children: [
//             AdminButton(
//               onTap: () => Get.to(() => const Categories()),
//               icon: Icons.pages_outlined,
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }