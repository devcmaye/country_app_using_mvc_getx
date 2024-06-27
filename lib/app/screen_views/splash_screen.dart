import 'package:country_app_using_mvc_getx/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Center(
               
        child: Lottie.asset(Constants.countryListAnimation),
      ),
    );
  }
}