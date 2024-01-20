import 'package:get/get.dart';
import 'package:techster_apps/app/modules/weather/controller/weather_controller.dart';

class WeatherBinding extends Bindings{

  @override
  void dependencies(){
    Get.lazyPut(() =>WeatherController() );
  }
}