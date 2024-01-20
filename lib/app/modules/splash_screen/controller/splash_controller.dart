import 'package:get/get.dart';
import 'package:techster_apps/app/routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    onBoarding();
    super.onInit();
  }

  void onBoarding() async {
    await Future.delayed(const Duration(seconds: 2));
      Get.offAndToNamed(Routes.WEATHER);
  }
}
