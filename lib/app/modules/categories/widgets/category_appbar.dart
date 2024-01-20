import 'package:flutter/material.dart';
import 'package:techster_apps/app/data/values/strings.dart';
import 'package:techster_apps/app/themes/app_colors.dart';
import 'package:techster_apps/app/themes/app_styles.dart';

PreferredSize CategoryAppbar({actions}) => PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: AppBar(
      foregroundColor: Colors.white,
      elevation: 0,
      backgroundColor: AppColors.blue,
      centerTitle: true,
      title:
          const Text(AppStrings.categories, style: AppStyles.tsBold28),
      actions: actions,
    ));
