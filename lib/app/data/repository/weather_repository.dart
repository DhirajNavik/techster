import 'package:techster_apps/app/data/model/response/WeatherModel.dart';
import 'package:techster_apps/app/data/values/urls.dart';
import 'package:techster_apps/base/base_repository.dart';

class WeatherRepository extends BaseRepository{
  Future getResponseData({required String cityName}) async {
    final response = await controller.get(path: "${URLs.weatherBaseURL}?key=${URLs.APIkey}&q=$cityName");
    return WeatherModel.fromJson(response);
  }

}