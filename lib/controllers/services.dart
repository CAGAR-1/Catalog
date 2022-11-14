import 'dart:math';

import 'package:get/get.dart';

class Services extends GetxController {
  var num = 1.obs;
  increaseProduct() {
    num += 1;
  }

  decreaseProduct() {
    if (num > 0) {
      num--;
    }
  }

  updateProduct() {}
}

//asfdf





// Get.model try it


