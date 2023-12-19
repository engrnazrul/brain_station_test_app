/*
 * File name: home_controller.dart
 * Last modified: 2023.12.19
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:get/get.dart';
import '../../../../common/ui.dart';
import '../../../models/slide_model.dart';
import '../../../repositories/slider_repository.dart';

class HomeController extends GetxController {
  late SliderRepository _sliderRepo;

  final repoList = <Slide>[].obs;

  HomeController() {
    _sliderRepo = new SliderRepository();
  }

  @override
  Future<void> onInit() async {
    await refreshHome();
    super.onInit();
  }

  Future refreshHome({bool showMessage = false}) async {
    await getSlider();
    if (showMessage) {
      Get.showSnackbar(Ui.SuccessSnackBar(message: "Home page refreshed successfully".tr));
    }
  }


  Future getSlider() async {
    try {
      repoList.assignAll(await _sliderRepo.getHomeSlider());
    } catch (e) {
      Get.showSnackbar(Ui.ErrorSnackBar(message: e.toString()));
    }
  }
}
