import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app/data/values/dimens.dart';
import 'package:techster_apps/app/data/values/strings.dart';
import 'package:techster_apps/app/modules/weather/controller/weather_controller.dart';
import 'package:techster_apps/app/modules/weather/widgets/custom_card.dart';
import 'package:techster_apps/app/modules/weather/widgets/weather_appbar.dart';
import 'package:techster_apps/app/themes/app_colors.dart';
import 'package:techster_apps/app/themes/app_styles.dart';
import 'package:techster_apps/widgets/drawer.dart';

class WeatherView extends GetView<WeatherController> {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WeatherAppBar(),
      drawer: HeaderDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Dimens.gapX2,
          ),
          Text(
            AppStrings.checkWhether,
            style: AppStyles.tsMedium26,
          ).paddingSymmetric(horizontal: Dimens.gapX1_6),
          SizedBox(
            height: Dimens.gapX1_6,
          ),
          SingleChildScrollView(
            child: Obx(
              () => Container(
                height: 50,
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.locations.length,
                  itemBuilder: (context, index) {
                    var data = controller.locations[index];
                    return GestureDetector(
                        onTap: () {
                          controller.getWeatherDetails(
                              controller.locations[index].toString());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius:
                                  BorderRadius.circular(Dimens.radiusX2)),
                          child: Text(
                            data.toString(),
                            style: AppStyles.tsMedium22
                                .copyWith(color: AppColors.white),
                          ).paddingSymmetric(
                              horizontal: Dimens.paddingX4,
                              vertical: Dimens.paddingX2),
                        ));
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: Dimens.gapX1_4,
                  ),
                ),
              ).paddingOnly(left: Dimens.paddingX3),
            ),
          ),
          SizedBox(
            height: Dimens.paddingX3,
          ),
          Row(
            children: [
              Image.asset("assets/images/location.png", width: 40)
                  .paddingSymmetric(horizontal: Dimens.paddingX3),
              Obx(
                () => Text(
                  controller.stateName.value,
                  style: AppStyles.tsBold22,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimens.paddingX2,
          ),
          Expanded(
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Obx(
                  () => Column(
                    children: [
                      CustomCard(
                          title: "temperature",
                          symbol: "°C",
                          temp: controller.temperature.toString()),
                      CustomCard(
                          title: "pressure",
                          symbol: "hPa",
                          temp: controller.pressure.toString()),
                      CustomCard(
                          title: "humidity",
                          symbol: "%",
                          temp: controller.humidity.toString()),
                      CustomCard(
                          symbol: "%",
                          title: "cloudCover",
                          temp: controller.cloud.toString()),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
