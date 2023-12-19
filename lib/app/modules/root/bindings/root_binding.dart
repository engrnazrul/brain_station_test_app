/*
 * File name: root_binding.dart
 * Last modified: 2023.12.19
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RootController(), permanent: true);
    Get.put(HomeController(), permanent: true);
  }
}
