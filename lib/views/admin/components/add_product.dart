import 'package:ecommerce/controllers/category_controller.dart';
import 'package:ecommerce/controllers/product_controller.dart';
import 'package:ecommerce/views/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProduct extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final TextEditingController priceContoller;
  final TextEditingController category_IdContoller;
  final TextEditingController imageController;
  final productcontroller = Get.put(ProductController());
  AddProduct(
      {Key? key,
      required this.nameController,
      required this.descriptionController,
      required this.priceContoller,
      required this.category_IdContoller,
      required this.imageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                label: 'Name',
                controller: nameController,
                validator: (value) {
                  return null;
                },
              ),
              CustomTextField(
                label: 'Description',
                controller: descriptionController,
                validator: (value) {
                  return null;
                },
              ),
              CustomTextField(
                label: 'Category Id',
                controller: descriptionController,
                validator: (value) {
                  return null;
                },
              ),
              CustomTextField(
                label: 'Price',
                controller: descriptionController,
                validator: (value) {
                  return null;
                },
              ),
              CustomTextField(
                label: 'image',
                controller: descriptionController,
                validator: (value) {
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    var data = {
                      "name": nameController.text,
                      "description": descriptionController.text,
                      "price": priceContoller.text,
                      "category_id": category_IdContoller.text,
                      "image": imageController.text,
                    };
                    productcontroller.add(data);
                  },
                  child: const Text("submit"))
            ],
          ),
        ));
  }
}
