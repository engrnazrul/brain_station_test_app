/*
 * File name: laravel_provider.dart
 * Last modified: 2023.12.19
 * Author: Brain Station 23 - https://brainstation-23.com/
 * Copyright (c) 2023
 */

import 'package:get/get.dart';
import '../models/setting_model.dart';
import '../models/repository_list_model.dart';
import 'api_provider.dart';

class LaravelApiClient extends GetxService with ApiClient {
  LaravelApiClient() {
    this.baseUrl = this.globalService.global.value.laravelBaseUrl ?? '';
  }
  Future<LaravelApiClient> init() async {
    super.init();
    return this;
  }

  Future<List<Slide>> getHomeSlider() async {
    Uri _uri = getApiBaseUri("slides");
    Get.log(_uri.toString());
    var response = await httpClient.getUri(_uri, options: optionsCache);
    if (response.data['success'] == true) {
      return response.data['data'].map<Slide>((obj) => Slide.fromJson(obj)).toList();
    } else {
      throw new Exception(response.data['message']);
    }
  }

  Future<Setting> getSettings() async {
    Uri _uri = getApiBaseUri("settings");
    Get.log(_uri.toString());
    var response = await httpClient.getUri(_uri, options: optionsNetwork);
    if (response.data['success'] == true) {
      return Setting.fromJson(response.data['data']);
    } else {
      throw new Exception(response.data['message']);
    }
  }

  Future<List> getModules() async {
    Uri _uri = getApiBaseUri("modules");
    printUri(StackTrace.current, _uri);
    var response = await httpClient.getUri(_uri, options: optionsNetwork);
    if (response.data['success'] == true) {
      return response.data['data'];
    } else {
      throw new Exception(response.data['message']);
    }
  }

  Future<Map<String, String>> getTranslations(String locale) async {
    var _queryParameters = {
      'locale': locale,
    };
    Uri _uri = getApiBaseUri("translations").replace(queryParameters: _queryParameters);
    Get.log(_uri.toString());
    var response = await httpClient.getUri(_uri, options: optionsCache);
    if (response.data['success'] == true) {
      return Map<String, String>.from(response.data['data']);
    } else {
      throw new Exception(response.data['message']);
    }
  }

  Future<List<String>> getSupportedLocales() async {
    Uri _uri = getApiBaseUri("supported_locales");
    Get.log(_uri.toString());
    var response = await httpClient.getUri(_uri, options: optionsCache);
    if (response.data['success'] == true) {
      return List.from(response.data['data']);
    } else {
      throw new Exception(response.data['message']);
    }
  }
}
