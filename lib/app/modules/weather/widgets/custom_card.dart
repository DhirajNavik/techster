import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app/data/values/dimens.dart';
import 'package:techster_apps/app/themes/app_colors.dart';
import 'package:techster_apps/app/themes/app_styles.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String temp;
  final String symbol;
  const CustomCard({super.key, required this.title, required this.temp, required this.symbol});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
      surfaceTintColor: AppColors.white,
      child: Row(
        children: [
          Image.asset("assets/images/$title.png",width: Dimens.imageScaleX8,).paddingSymmetric(horizontal: Dimens.paddingX3),
          Flexible(
            child: Text(
              "${title.capitalize} : $temp$symbol",
              style: AppStyles.tsBold20.copyWith(overflow: TextOverflow.ellipsis),
            ),
          ),
         
        ],
      ).paddingSymmetric(vertical: Dimens.gapX2),
    ).paddingSymmetric(horizontal: Dimens.paddingX2,vertical: Dimens.paddingX2);
  }
}
