import 'package:get/get.dart';

import '../models/repository_list_model.dart';
import '../providers/laravel_provider.dart';

class SliderRepository {
  late LaravelApiClient _laravelApiClient;

  SliderRepository() {
    this._laravelApiClient = Get.find<LaravelApiClient>();
  }

  Future<List<Slide>> getHomeSlider() {
    return _laravelApiClient.getHomeSlider();
  }
}
