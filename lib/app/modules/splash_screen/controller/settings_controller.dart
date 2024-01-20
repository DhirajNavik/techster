import 'package:get/get.dart';
import 'package:techster_apps/base/base_controller.dart';

class SettingsController extends BaseController {
 

  RxBool isSwitchSelected = true.obs;
  

   onSwitchSelect() {
   Get.isDarkMode?isSwitchSelected.value=false:isSwitchSelected.value=true;

   
  }
}
