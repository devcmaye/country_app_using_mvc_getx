import 'package:country_app_using_mvc_getx/app/bindings/splash_bindings.dart';
import 'package:country_app_using_mvc_getx/app/data/local/my_shared_pref.dart';
import 'package:country_app_using_mvc_getx/app/routes/app_pages.dart';
import 'package:country_app_using_mvc_getx/configs/themes/my_theme.dart';
import 'package:country_app_using_mvc_getx/translations/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  // wait for bindings
  WidgetsFlutterBinding.ensureInitialized();

  // init shared preference
  await MySharedPref.init();

  // init date format language
  await initializeDateFormatting(
      LocalizationService.getCurrentLocal().languageCode);

  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          title: 'Weather App',
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            return Theme(
              data:
                  MyTheme.getThemeData(isLight: MySharedPref.getThemeIsLight()),
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              ),
            );
          },
          initialBinding: SplashBinding(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          locale: MySharedPref.getCurrentLocal(),
          translations: LocalizationService.getInstance(),
        );
      },
    ),
  );
}
