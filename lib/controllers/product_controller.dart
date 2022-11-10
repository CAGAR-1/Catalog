// // import 'dart:convert';

// // import 'package:ecommerce/service/auth_service.dart';
// // import 'package:ecommerce/utils/api.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import 'package:http/http.dart' as http;

// // class ProductController extends GetxController {
// //   AuthService authService = AuthService();
// //   var isLoading = false.obs;
// //   var products = [].obs;

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     get();
// //   }

// //   add(data) async {
// //     var token = await authService.getToken();
// //     data["token"] = token;
// //     isLoading.value = true;
// //     var url = Uri.parse(AddProduct_API); //api change
// //     var response = await http.post(url, body: data);
// //     var result = jsonDecode(response.body);
// //     var success = result['success'];
// //     if (success) {
// //       Get.snackbar("Success", result['message'],
// //           colorText: Colors.white, backgroundColor: Colors.green);
// //     } else {
// //       Get.snackbar("Error", result['message'],
// //           colorText: Colors.white, backgroundColor: Colors.red);
// //     }
// //     isLoading.value = false;
// //   }
// // }

// // import 'dart:convert';

// // import 'package:ecommerce/service/auth_service.dart';
// // import 'package:ecommerce/utils/api.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import 'package:http/http.dart' as http;

// // import 'package:image_picker/image_picker.dart';

// // class ProductController extends GetxController {
// //   AuthService authService = AuthService();
// //   var isLoading = false.obs;
// //   var products = [].obs;

// //   //onit
// //   @override
// //   void onInit() {
// //     super.onInit();
// //     get();
// //   }

// //   add({data, required PickedFile image}) async {
// //     var token = await authService.getToken();
// //     data["token"] = token;
// //     isLoading.value = true;
// //     var request = http.MultipartRequest('POST', Uri.parse(AddProduct_API));//API CHANGE XA
// //     request.fields.addAll(data);
// //     request.files.add(await http.MultipartFile.fromPath('image', image.path));
// //     var response = await request.send();
// //     isLoading.value = false;
// //     var result = await response.stream.bytesToString();
// //     var decodedData = jsonDecode(result);
// //     var success = decodedData['success'];
// //     var message = decodedData['message'];

// //     if (success) {
// //       Get.snackbar("Success", message,
// //           colorText: Colors.white, backgroundColor: Colors.green);
// //     } else {
// //       Get.snackbar("Error", message,
// //           colorText: Colors.white, backgroundColor: Colors.red);
// //     }
// //   }

// //   get() async {
// //     isLoading.value = true;
// //     var response = await http.get(Uri.parse(GET_PRODUCTS_API));
// //     isLoading.value = false;
// //     products.value = jsonDecode(response.body)["data"];
// //     print(products);
// //     update();
// //   }
// // }
// // import 'dart:convert';

// // import 'package:ecommerce/service/auth_service.dart';
// // import 'package:ecommerce/utils/api.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import 'package:http/http.dart' as http;

// // import 'package:image_picker/image_picker.dart';

// // class ProductController extends GetxController {
// //   AuthService authService = AuthService();
// //   var isLoading = false.obs;
// //   var products = [].obs;

// //   //onit
// //   @override
// //   void onInit() {
// //     super.onInit();
// //     get();
// //   }

// //   add({data, required PickedFile image}) async {
// //     var token = await authService.getToken();
// //     data["token"] = token;
// //     isLoading.value = true;
// //     var request = http.MultipartRequest('POST', Uri.parse(ADD_PRODUCT_API));
// //     request.fields.addAll(data);
// //     request.files.add(await http.MultipartFile.fromPath('image', image.path));
// //     var response = await request.send();
// //     isLoading.value = false;
// //     var result = await response.stream.bytesToString();
// //     var decodedData = jsonDecode(result);
// //     var success = decodedData['success'];
// //     var message = decodedData['message'];

// //     if (success) {
// //       Get.snackbar("Success", message,
// //           colorText: Colors.white, backgroundColor: Colors.green);
// //     } else {
// //       Get.snackbar("Error", message,
// //           colorText: Colors.white, backgroundColor: Colors.red);
// //     }
// //   }

// //   get() async {
// //     isLoading.value = true;
// //     var response = await http.get(Uri.parse(GET_PRODUCTS_API));
// //     isLoading.value = false;
// //     products.value = jsonDecode(response.body)["data"];
// //     print(products);
// //     update();
// //   }
// // }



// import 'dart:convert';

// import 'package:ecommerce/service/auth_service.dart';
// import 'package:ecommerce/utils/api.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // import 'package:git_flutter_demo/service/auth_service.dart';
// import 'package:http/http.dart' as http;
// // import 'package:git_flutter_demo/utils/api.dart';
// import 'package:image_picker/image_picker.dart';

// class ProductController extends GetxController {
//   AuthService authService = AuthService();
//   var isLoading = false.obs;
//   var products = [].obs;

//   //onit
//   @override
//   void onInit() {
//     super.onInit();
//     get();
//   }

//   add({data, required PickedFile image}) async {
//     var token = await authService.getToken();
//     data["token"] = token;
//     isLoading.value = true;
//     var request = http.MultipartRequest('POST', Uri.parse(ADD_PRODUCT_API));
//     request.fields.addAll(data);
//     request.files.add(await http.MultipartFile.fromPath('image', image.path));
//     var response = await request.send();
//     isLoading.value = false;
//     var result = await response.stream.bytesToString();
//     var decodedData = jsonDecode(result);
//     var success = decodedData['success'];
//     var message = decodedData['message'];

//     if (success) {
//       Get.snackbar("Success", message,
//           colorText: Colors.white, backgroundColor: Colors.green);
//     } else {
//       Get.snackbar("Error", message,
//           colorText: Colors.white, backgroundColor: Colors.red);
//     }
//   }

//   get() async {
//     isLoading.value = true;
//     var response = await http.get(Uri.parse(GET_PRODUCTS_API));
//     isLoading.value = false;
//     products.value = jsonDecode(response.body)["data"];
//     print(products);
//     update();
//   }
// }






import 'dart:convert';

import 'package:ecommerce/service/auth_service.dart';
import 'package:ecommerce/utils/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import 'package:image_picker/image_picker.dart';

import '../models/product.dart';

class ProductController extends GetxController {
  AuthService authService = AuthService();
  var isLoading = false.obs;
  RxList<Product> products = RxList<Product>([]);
  //onit
  @override
  void onInit() {
    super.onInit();
    get();
  }

  add({data, required PickedFile image}) async {
    var token = await authService.getToken();
    data["token"] = token;
    isLoading.value = true;
    var request = http.MultipartRequest('POST', Uri.parse(ADD_PRODUCT_API));
    request.fields.addAll(data);
    request.files.add(await http.MultipartFile.fromPath('image', image.path));
    var response = await request.send();
    isLoading.value = false;
    var result = await response.stream.bytesToString();
    var decodedData = jsonDecode(result);
    var success = decodedData['success'];
    var message = decodedData['message'];

    if (success) {
      Get.snackbar("Success", message,
          colorText: Colors.white, backgroundColor: Colors.green);
    } else {
      Get.snackbar("Error", message,
          colorText: Colors.white, backgroundColor: Colors.red);
    }
  }

  get() async {
    isLoading.value = true;
    var response = await http.get(Uri.parse(GET_PRODUCTS_API));
    isLoading.value = false;
    var products = jsonDecode(response.body)["data"];
    this.products.value =
        products.map<Product>((e) => Product.fromJson(e)).toList();
    print(products);
    update();
  }
}
