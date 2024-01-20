import 'package:get/get.dart';
import 'package:techster_apps/app/modules/splash_screen/controller/settings_controller.dart';


class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>SettingsController());
  }
}
 