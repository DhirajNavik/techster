import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app/data/model/response/WeatherModel.dart';
import 'package:techster_apps/app/data/repository/weather_repository.dart';
import 'package:techster_apps/base/base_controller.dart';
import 'package:techster_apps/utils/loading/loadings_utils.dart';

class WeatherController extends BaseController<WeatherRepository> {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getWeatherDetails(locations[0]);

  }

  RxList locations =
      RxList(["Hyderabad", "Delhi", "Bengaluru", "Visakhapatnam"]);
  RxString stateName = "".obs;
  RxDouble temperature = 0.0.obs;
  RxInt pressure = 0.obs;
  RxInt humidity = 0.obs;
  RxInt cloud = 0.obs;


  Future<void> getWeatherDetails(String cityName) async {

    stateName==""?LoadingUtils.hideLoader():
    LoadingUtils.showLoader();
    try {
      final response = await repository.getResponseData(
        cityName: cityName,
      );

      if (response != "") {
        WeatherModel data = response;
        stateName.value = data.location!.name.toString();
        temperature.value = data.current!.tempC!.toDouble();
        pressure.value = data.current!.pressureMb!.toInt();
        humidity.value = data.current!.humidity!.toInt();
        cloud.value = data.current!.cloud!.toInt();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
     LoadingUtils.hideLoader();
    }
  }
}
