import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../../global_widgets/tab_bar_widget.dart';
import '../bindings/settings_binding.dart';
import '../views/theme_mode_view.dart';

class SettingsController extends GetxController {
  var currentIndex = 0.obs;
  final pages = <String>[Routes.SETTINGS_LANGUAGE, Routes.SETTINGS_THEME_MODE];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {

    if (settings.name == Routes.SETTINGS_THEME_MODE)
      return GetPageRoute(
        settings: settings,
        page: () => ThemeModeView(hideAppBar: true),
        binding: SettingsBinding(),
      );

    return null;
  }

  @override
  void onInit() {
    if (Get.isRegistered<TabBarController>(tag: 'settings')) {
      Get.find<TabBarController>(tag: 'settings').selectedId.value = '0';
    }
    currentIndex.value = 0;
    super.onInit();
  }
}
