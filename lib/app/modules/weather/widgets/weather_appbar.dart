import 'package:flutter/material.dart';
import 'package:techster_apps/app/data/values/strings.dart';
import 'package:techster_apps/app/themes/app_colors.dart';
import 'package:techster_apps/app/themes/app_styles.dart';

PreferredSize WeatherAppBar({actions}) => PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: AppBar(
      foregroundColor: Colors.white,
      elevation: 0,
      backgroundColor: AppColors.green,
      centerTitle: true,
      title:
          const Text(AppStrings.weatherDetail, style: AppStyles.tsBold28),
      actions: actions,
    ));
