import 'package:ecommerce/controllers/services.dart';
import 'package:ecommerce/utils/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/cart_controller.dart';
import '../../models/product.dart';

class ProductComponent extends StatelessWidget {
  final Product product;
  final CartController cartController = Get.find();
  ProductComponent({Key? key, required this.product}) : super(key: key);
  // final Services services = Get.find<Services>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: Get.width / 2,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                        height: 200,
                        child: Image.network("$BASE_URL/${product.image}")),
                    Text(product.description),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 20,
            child: InkWell(
                onTap: () {
                  Get.bottomSheet(Container(
                      height: Get.height / 2,
                      color: Colors.white,
                      child: Column(children: [
                        SizedBox(
                          height: 200,
                          child: Image.network(
                            "$BASE_URL/${product.image}",
                          ),
                        ),
                        Text(
                          product.description,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(product.price.toString()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                cartController.increment();
                              },
                              child: CircleAvatar(
                                radius: 30,
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                            Obx(() {
                              return Text(
                                cartController.quantity.toString(),
                                style: TextStyle(fontSize: 40),
                              );
                            }),
                            InkWell(
                              onTap: () {
                                cartController.decrement();
                              },
                              child: CircleAvatar(
                                // backgroundColor: Colors.grey,
                                radius: 30,
                                child: Text(
                                  "-",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  cartController.add(
                                    Product(
                                        id: product.id,
                                        description: product.description,
                                        image: product.image,
                                        price: product.price,
                                        quantity: "1",
                                        category: product.category),
                                  );
                                },
                                child: const Text('Add to cart'))
                          ],
                        ),
                      ])));
                },
                child: const CircleAvatar(child: Icon(Icons.shopping_cart)))),
      ],
    );
  }
}
