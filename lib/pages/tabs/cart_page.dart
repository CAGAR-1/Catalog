// import 'package:ecommerce/controllers/cart_controller.dart';
// import 'package:ecommerce/views/components/product_components.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// import '../../models/product.dart';

// class Cart extends StatelessWidget {
//   final CartController cartController = Get.find();
//   Cart({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: cartController.cart.values
//               .map((Product e) => ProductComponent(product: e))
//               .toList(),
//         ));
//   }
// }

import 'package:ecommerce/controllers/cart_controller.dart';
import 'package:ecommerce/utils/api.dart';
import 'package:ecommerce/views/payment/khalti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../models/product.dart';

class Cart extends StatelessWidget {
  final CartController cartController = Get.find();
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
    
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  
                  children: cartController.cart.values
                      .map((Product product) => 
                     
                      
                      Container(
                            child: ListTile(
                              leading:
                                  Image.network("$BASE_URL/${product.image}"),
                              title: Text(product.description),
                              subtitle: Text(
                                "${product.price} x ${product.quantity} = ${int.parse(product.price) * int.parse(product.quantity.toString())}",
                              ),
                              trailing: IconButton(
                                  onPressed: () =>
                                      cartController.remove(product),
                                  icon: const Icon(Icons.delete)),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              width: Get.width,
              child: TextButton(
                onPressed: () => Get.to(KhaltiPayment()),
                child: Text(
                  "Place Order Rs${cartController.total.value}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}