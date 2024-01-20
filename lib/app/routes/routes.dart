import 'package:get/get.dart';
import 'package:techster_apps/app/modules/categories/binding/categories_binding.dart';
import 'package:techster_apps/app/modules/categories/view/categories_view.dart';
import 'package:techster_apps/app/modules/splash_screen/bindings/settings_bindings.dart';
import 'package:techster_apps/app/modules/splash_screen/bindings/splash_binding.dart';
import 'package:techster_apps/app/modules/splash_screen/view/settings.dart';
import 'package:techster_apps/app/modules/splash_screen/view/splash_view.dart';
import 'package:techster_apps/app/modules/weather/bindings/waether_binding.dart';
import 'package:techster_apps/app/modules/weather/view/weather_view.dart';

class Routes {
  static const SPLASH = '/splash_view';

  static const CATEGORIES = "/categories_view";
  static const WEATHER = "/weather_view";
  static const SETTINGS = '/settings';

}

class AppPage {
  static final Pages = [
       GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding()
    ),
    GetPage(
        name: Routes.CATEGORIES,
        page: () => const CategoriesView(),
        binding: CategoriesBinding()),

        GetPage(
        name: Routes.WEATHER,
        page: () => const WeatherView(),
        binding: WeatherBinding()),

            GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingsOptions(),
      binding: SettingBinding()
    ),
  ];
}
