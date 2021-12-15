import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nav {
  pushWithRoute(String route) => Get.toNamed(route);

  backBeforeRoute() {
    Get.back();
  }
}
