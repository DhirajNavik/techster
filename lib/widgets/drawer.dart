
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app/data/values/dimens.dart';
import 'package:techster_apps/app/data/values/strings.dart';
import 'package:techster_apps/app/routes/routes.dart';
import 'package:techster_apps/app/themes/app_styles.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Center(
                child: Text(
                  AppStrings.appName,
                  style: AppStyles.tsBold60,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap:() => Get.toNamed(Routes.WEATHER),
                child: ListTile(
                  leading: Icon(Icons.home_outlined)
                      .paddingOnly(top: Dimens.gapX0_3),
                  title: Text(
                    "Weather",
                    style: AppStyles.tsBold14,
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap:()=> Get.toNamed(Routes.CATEGORIES),
                child: ListTile(
                  leading: Icon(Icons.payment, ),
                  title: Text(
                    "Categories",
                    style: AppStyles.tsBold14,
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.SETTINGS),
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Setting",
                    style: AppStyles.tsBold14,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.mail,)
                    .paddingOnly(bottom: 15),
                title: Text(
                  AppStrings.gitouch,
                  style: AppStyles.tsBold14,
                ),
                subtitle: Text(AppStrings.mail,
                    style: AppStyles.tsBold14),
              ),
              Divider(),
            ],
          )
        ],
      ),
    );
  }
}
