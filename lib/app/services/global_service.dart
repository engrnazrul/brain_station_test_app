/*
 * File name: global_service.dart
 * Copyright (c) 2022
 */

import 'package:get/get.dart';

import '../../common/helper.dart';
import '../models/global_model.dart';

class GlobalService extends GetxService {
  final global = Global().obs;

  Future<GlobalService> init() async {
    var response = await Helper.getJsonFile('config/global.json');
    global.value = Global.fromJson(response);
    return this;
  }

  String get baseUrl => Helper.toUrl(global.value.laravelBaseUrl ?? '');
}
