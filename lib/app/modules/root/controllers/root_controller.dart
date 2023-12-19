/*
 * File name: home_view.dart
 * Last modified: 2023.12.19
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/views/home_view.dart';

class RootController extends GetxController {
  final currentIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  List<Widget> pages = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  Widget get currentPage => pages[currentIndex.value];

  /**
   * change page in route
   * */
  Future<void> changePageInRoot(int _index) async {
      currentIndex.value = _index;
      await refreshPage(_index);
  }

  Future<void> changePageOutRoot(int _index) async {
    currentIndex.value = _index;
    await refreshPage(_index);
    await Get.offNamedUntil(Routes.ROOT, (Route route) {
      if (route.settings.name == Routes.ROOT) {
        return true;
      }
      return false;
    }, arguments: _index);
  }

  Future<void> changePage(int _index) async {
    if (Get.currentRoute == Routes.ROOT) {
      await changePageInRoot(_index);
    } else {
      await changePageOutRoot(_index);
    }
  }

  Future<void> refreshPage(int _index) async {
    switch (_index) {
      case 0:
        {
          await Get.find<HomeController>().refreshHome();
          break;
        }
    }
  }
}
