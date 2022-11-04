import 'dart:convert';

import 'package:ecommerce/service/auth_service.dart';
import 'package:ecommerce/utils/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  AuthService authService = AuthService();
  var isLoading = false.obs;

  add(data) async {
    var token = await authService.getToken();
    data["token"] = token;
    isLoading.value = true;
    var url = Uri.parse(AddProduct_API);//api change
    var response = await http.post(url, body: data);
    var result = jsonDecode(response.body);
    var success = result['success'];
    if (success) {
      Get.snackbar("Success", result['message'],
          colorText: Colors.white, backgroundColor: Colors.green);
    } else {
      Get.snackbar("Error", result['message'],
          colorText: Colors.white, backgroundColor: Colors.red);
    }
    isLoading.value = false;
  }
}
