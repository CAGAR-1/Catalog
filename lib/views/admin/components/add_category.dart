import 'package:ecommerce/controllers/category_controller.dart';
import 'package:ecommerce/main.dart';
import 'package:ecommerce/views/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddCategory extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final categoryController = Get.put(CategoryController());
  AddCategory(
      {Key? key,
      required this.nameController,
      required this.descriptionController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,





      


      
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            label: 'Category Name',
            controller: nameController,
            validator: (value) {
              return null;
            },

          ),
          CustomTextField(
            label: 'Category Description',
            controller: descriptionController,
            validator: (value) {
              return null;
            },





          ),
          ElevatedButton(
              onPressed: () {
                var data = {
                  "name": nameController.text,
                  "description": descriptionController.text
                };
                categoryController.add(data);
              },
              child: const Text("submit"))
        ],
      ),
    );
  }
}