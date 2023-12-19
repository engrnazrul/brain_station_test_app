/*
 * File name: setting_repository.dart
 * Last modified: 2023.12.19
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:get/get.dart';

import '../models/setting_model.dart';
import '../providers/laravel_provider.dart';

class SettingRepository {
  late LaravelApiClient _laravelApiClient;

  SettingRepository() {
    this._laravelApiClient = Get.find<LaravelApiClient>();
  }

  Future<Setting> get() {
    return _laravelApiClient.getSettings();
  }

  Future<List<dynamic>> getModules() {
    return _laravelApiClient.getModules();
  }

  Future<Map<String, String>> getTranslations(String locale) {
    return _laravelApiClient.getTranslations(locale);
  }

  Future<List<String>> getSupportedLocales() {
    return _laravelApiClient.getSupportedLocales();
  }
}
