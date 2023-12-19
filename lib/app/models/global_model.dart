import 'parents/model.dart';

class Global extends Model {
  String? mockBaseUrl;
  String? laravelBaseUrl;
  String? apiPath;

  Global({this.mockBaseUrl, this.laravelBaseUrl, this.apiPath});

  Global.fromJson(Map<String, dynamic>? json) {
    mockBaseUrl = json?['mock_base_url'].toString();
    laravelBaseUrl = json?['laravel_base_url'].toString();
    apiPath = json?['api_path'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mock_base_url'] = this.mockBaseUrl;
    data['laravel_base_url'] = this.laravelBaseUrl;
    data['api_path'] = this.apiPath;
    return data;
  }
}
