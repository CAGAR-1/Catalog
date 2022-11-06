// import 'package:ecommerce/controllers/product_controller.dart';
// import 'package:ecommerce/views/components/custom_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddProduct extends StatelessWidget {
//   final TextEditingController nameController;
//   final TextEditingController descriptionController;
//   final TextEditingController priceController;
//   final TextEditingController category_IdController;
//   final TextEditingController imageController;
//   final productcontroller = Get.put(ProductController());
//   AddProduct(
//       {Key? key,
//       required this.nameController,
//       required this.descriptionController,
//       required this.priceController,
//       required this.category_IdController,
//       required this.imageController})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 800,
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               CustomTextField(
//                 label: 'Name',
//                 controller: nameController,
//                 validator: (value) {
//                   return null;
//                 },
//               ),
//               CustomTextField(
//                 label: 'Description',
//                 controller: descriptionController,
//                 validator: (value) {
//                   return null;
//                 },
//               ),
//               CustomTextField(
//                 label: 'Category Id',
//                 controller: descriptionController,
//                 validator: (value) {
//                   return null;
//                 },
//               ),
//               CustomTextField(
//                 label: 'Price',
//                 controller: descriptionController,
//                 validator: (value) {
//                   return null;
//                 },
//               ),
//               CustomTextField(
//                 label: 'image',
//                 controller: descriptionController,
//                 validator: (value) {
//                   return null;
//                 },
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     var data = {
//                       "name": nameController.text,
//                       "description": descriptionController.text,
//                       "price": priceController.text,
//                       "category_id": category_IdController.text,
//                       "image": imageController.text,
//                     };
//                     productcontroller.add(data);
//                   },
//                   child: const Text("submit"))
//             ],
//           ),
//         ));
//   }
// }





// Something new



// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:git_flutter_demo/controllers/product_controller.dart';
// import 'package:git_flutter_demo/views/conponents/custom_text_field.dart';
// import 'package:image_picker/image_picker.dart';

// class AddEditProductForm extends StatefulWidget {
//   final String title;

//   const AddEditProductForm({Key? key, this.title = "Add Product"})
//       : super(key: key);

//   @override
//   State<AddEditProductForm> createState() => _AddEditProductFormState();
// }

// class _AddEditProductFormState extends State<AddEditProductForm> {
//   final ImagePicker _picker = ImagePicker();

//   PickedFile? pickedFile;

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   final TextEditingController _nameController = TextEditingController();

//   final TextEditingController _descriptionController = TextEditingController();
//   final ProductController productController = Get.put(ProductController());
//   final TextEditingController priceController = TextEditingController();
//   final TextEditingController categoryIdController = TextEditingController();
//   String? selectedValue;
//   List<Map<String, dynamic>> items = [
//     {"id": "1"}
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           // height: 300,
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(widget.title, style: const TextStyle(fontSize: 20)),
//                   Column(
//                     children: [
//                       CustomTextField(
//                         label: "Category Name",
//                         controller: _nameController,
//                       ),
//                       CustomTextField(
//                         label: "Category description",
//                         controller: _descriptionController,
//                       ),
//                       // DropdownButtonHideUnderline(
//                       //     child: DropdownButton2(
//                       //   isExpanded: true,
//                       //   hint: Row(
//                       //     children: const [
//                       //       Icon(
//                       //         Icons.list,
//                       //         size: 16,
//                       //         color: Colors.yellow,
//                       //       ),
//                       //       SizedBox(
//                       //         width: 4,
//                       //       ),
//                       //       Expanded(
//                       //         child: Text(
//                       //           'Select Item',
//                       //           style: TextStyle(
//                       //             fontSize: 14,
//                       //             fontWeight: FontWeight.bold,
//                       //             color: Colors.yellow,
//                       //           ),
//                       //           overflow: TextOverflow.ellipsis,
//                       //         ),
//                       //       ),
//                       //     ],
//                       //   ),
//                       //   items: categroyController.categories.value
//                       //       .map((item) => DropdownMenuItem<Category>(
//                       //             value: item,
//                       //             child: Text(
//                       //               item.name,
//                       //               style: const TextStyle(
//                       //                 fontSize: 14,
//                       //                 fontWeight: FontWeight.bold,
//                       //                 color: Colors.white,
//                       //               ),
//                       //               overflow: TextOverflow.ellipsis,
//                       //             ),
//                       //           ))
//                       //       .toList(),
//                       //   value: selectedValue,
//                       //   onChanged: (value) {
//                       //     setState(() {
//                       //       selectedValue = value.toString();
//                       //     });
//                       //   },
//                       //   icon: const Icon(
//                       //     Icons.arrow_forward_ios_outlined,
//                       //   ),
//                       //   iconSize: 14,
//                       //   iconEnabledColor: Colors.yellow,
//                       //   iconDisabledColor: Colors.grey,
//                       //   buttonHeight: 50,
//                       //   buttonWidth: 160,
//                       //   buttonPadding:
//                       //       const EdgeInsets.only(left: 14, right: 14),
//                       //   buttonDecoration: BoxDecoration(
//                       //     borderRadius: BorderRadius.circular(14),
//                       //     border: Border.all(
//                       //       color: Colors.black26,
//                       //     ),
//                       //     color: Colors.redAccent,
//                       //   ),
//                       //   buttonElevation: 2,
//                       //   itemHeight: 40,
//                       //   itemPadding: const EdgeInsets.only(left: 14, right: 14),
//                       //   dropdownMaxHeight: 200,
//                       //   dropdownWidth: 200,
//                       //   dropdownPadding: null,
//                       //   dropdownDecoration: BoxDecoration(
//                       //     borderRadius: BorderRadius.circular(14),
//                       //     color: Colors.redAccent,
//                       //   ),
//                       //   dropdownElevation: 8,
//                       //   scrollbarRadius: const Radius.circular(40),
//                       //   scrollbarThickness: 6,
//                       //   scrollbarAlwaysShow: true,
//                       //   offset: const Offset(-20, 0),
//                       // )),
//                       CustomTextField(
//                         label: "Price",
//                         controller: priceController,
//                       ),
//                       CustomTextField(
//                         label: "Category ID",
//                         controller: categoryIdController,
//                       ),
//                     ],
//                   ),
//                   InkWell(
//                       onTap: () async {
//                         pickedFile = await _picker.getImage(
//                           source: ImageSource.gallery,
//                         );
//                         setState(() {});
//                         if (pickedFile != null) {
//                           // Get.back();
//                         }
//                       },
//                       child: (pickedFile == null)
//                           ? Container(
//                               width: Get.width / 2,
//                               height: Get.height / 4,
//                               decoration: BoxDecoration(
//                                 color: Colors.grey,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: const Icon(Icons.add_a_photo),
//                             )
//                           : Container(
//                               width: Get.width / 2,
//                               height: Get.height / 4,
//                               decoration: BoxDecoration(
//                                 //image from file
//                                 image: DecorationImage(
//                                     image: FileImage(
//                                       File(pickedFile!.path),
//                                     ),
//                                     fit: BoxFit.cover),
//                                 color: Colors.grey,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: const Icon(Icons.add_a_photo),
//                             )),
//                   ElevatedButton(
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           var data = {
//                             "name": _nameController.text,
//                             "description": _descriptionController.text,
//                             "category_id": categoryIdController.text,
//                             "price": priceController.text
//                           };
//                           productController.add(data, pickedFile);
//                         }
//                       },
//                       child: const Text('Save')),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';
import 'package:ecommerce/controllers/product_controller.dart';
import 'package:ecommerce/views/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';

class AddEditProductForm extends StatefulWidget {
  final String title;

  const AddEditProductForm({Key? key, this.title = "Add Product"})
      : super(key: key);

  @override
  State<AddEditProductForm> createState() => _AddEditProductFormState();
}

class _AddEditProductFormState extends State<AddEditProductForm> {
  final ImagePicker _picker = ImagePicker();

  PickedFile? pickedFile;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();
  final ProductController productController = Get.put(ProductController());
  final TextEditingController priceController = TextEditingController();
  final TextEditingController categoryIdController = TextEditingController();
  String? selectedValue;
  List<Map<String, dynamic>> items = [
    {"id": "1"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: 300,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.title, style: const TextStyle(fontSize: 20)),
                  Column(
                    children: [
                      CustomTextField(
                        label: "Category Name",
                        controller: _nameController,
                      ),
                      CustomTextField(
                        label: "Category description",
                        controller: _descriptionController,
                      ),
                      // DropdownButtonHideUnderline(
                      //     child: DropdownButton2(
                      //   isExpanded: true,
                      //   hint: Row(
                      //     children: const [
                      //       Icon(
                      //         Icons.list,
                      //         size: 16,
                      //         color: Colors.yellow,
                      //       ),
                      //       SizedBox(
                      //         width: 4,
                      //       ),
                      //       Expanded(
                      //         child: Text(
                      //           'Select Item',
                      //           style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.yellow,
                      //           ),
                      //           overflow: TextOverflow.ellipsis,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   items: categroyController.categories.value
                      //       .map((item) => DropdownMenuItem<Category>(
                      //             value: item,
                      //             child: Text(
                      //               item.name,
                      //               style: const TextStyle(
                      //                 fontSize: 14,
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Colors.white,
                      //               ),
                      //               overflow: TextOverflow.ellipsis,
                      //             ),
                      //           ))
                      //       .toList(),
                      //   value: selectedValue,
                      //   onChanged: (value) {
                      //     setState(() {
                      //       selectedValue = value.toString();
                      //     });
                      //   },
                      //   icon: const Icon(
                      //     Icons.arrow_forward_ios_outlined,
                      //   ),
                      //   iconSize: 14,
                      //   iconEnabledColor: Colors.yellow,
                      //   iconDisabledColor: Colors.grey,
                      //   buttonHeight: 50,
                      //   buttonWidth: 160,
                      //   buttonPadding:
                      //       const EdgeInsets.only(left: 14, right: 14),
                      //   buttonDecoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(14),
                      //     border: Border.all(
                      //       color: Colors.black26,
                      //     ),
                      //     color: Colors.redAccent,
                      //   ),
                      //   buttonElevation: 2,
                      //   itemHeight: 40,
                      //   itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      //   dropdownMaxHeight: 200,
                      //   dropdownWidth: 200,
                      //   dropdownPadding: null,
                      //   dropdownDecoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(14),
                      //     color: Colors.redAccent,
                      //   ),
                      //   dropdownElevation: 8,
                      //   scrollbarRadius: const Radius.circular(40),
                      //   scrollbarThickness: 6,
                      //   scrollbarAlwaysShow: true,
                      //   offset: const Offset(-20, 0),
                      // )),
                      CustomTextField(
                        label: "Price",
                        controller: priceController,
                      ),
                      CustomTextField(
                        label: "Category ID",
                        controller: categoryIdController,
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: () async {
                        pickedFile = await _picker.getImage(
                          source: ImageSource.gallery,
                        );
                        setState(() {});
                        if (pickedFile != null) {
                          // Get.back();
                        }
                      },
                      child: (pickedFile == null)
                          ? Container(
                              width: Get.width / 2,
                              height: Get.height / 4,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.add_a_photo),
                            )
                          : Container(
                              width: Get.width / 2,
                              height: Get.height / 4,
                              decoration: BoxDecoration(
                                //image from file
                                image: DecorationImage(
                                    image: FileImage(
                                      File(pickedFile!.path),
                                    ),
                                    fit: BoxFit.cover),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.add_a_photo),
                            )),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          var data = {
                            "name": _nameController.text,
                            "description": _descriptionController.text,
                            "category_id": categoryIdController.text,
                            "price": priceController.text
                          };
                          productController.add(data);
                        }
                      },
                      child: const Text('Save')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

