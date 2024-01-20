import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app/data/values/dimens.dart';
import 'package:techster_apps/app/data/values/strings.dart';
import 'package:techster_apps/app/modules/splash_screen/controller/settings_controller.dart';
import 'package:techster_apps/app/themes/app_styles.dart';
import 'package:techster_apps/widgets/common_appbar.dart';
import 'package:techster_apps/widgets/drawer.dart';

class SettingsOptions extends GetView<SettingsController> {
  const SettingsOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
     appBar:CustomAppBar(title: AppStrings.appName),
     drawer: HeaderDrawer(),
      body: Column(
        children: [
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.isSwitchSelected.value
                        ?"DarkMode"
                      
                        :   "LightMode" ,
                    style: AppStyles.tsBold22,
                  ),
                  Switch(
                      value: controller.isSwitchSelected.value,
                      onChanged: (v) {
                          Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              
            );
                        controller.onSwitchSelect();
                      }),
                ],
              ).paddingSymmetric(horizontal: Dimens.gapX2,vertical: Dimens.gapX1)),
          Divider(),
        ],
      ),
    );
  }
}
