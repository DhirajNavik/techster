import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app.dart';
import 'package:techster_apps/app/data/values/dimens.dart';
import 'package:techster_apps/app/modules/splash_screen/controller/splash_controller.dart';
import 'package:techster_apps/app/themes/app_colors.dart';

class SplashView extends GetView<SplashController>{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: SizedBox(
  width: Dimens.screenWidth,
  child: DefaultTextStyle(
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 35,
      color: Colors.white,
      shadows: [
        Shadow(
          blurRadius: 7.0,
          color: Colors.white,
          offset: Offset(0, 0),
        ),
      ],
    ),
    child: Center(
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          FlickerAnimatedText('Techster'),
        ],
        onTap: () {
          
        },
      ),
    ),
  ),
)
      ),
    );
  }
}
