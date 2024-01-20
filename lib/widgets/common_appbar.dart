import 'package:flutter/material.dart';
import 'package:techster_apps/app/themes/app_colors.dart';
import 'package:techster_apps/app/themes/app_styles.dart';

PreferredSize CustomAppBar({List<Widget>? actions, required String title}) =>
    PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
           backgroundColor: AppColors.green,
          actions: actions,
          centerTitle: true,
          toolbarHeight: 100,
          title: Text(
            title,
            style: AppStyles.tsBold35
          ),
        ));
