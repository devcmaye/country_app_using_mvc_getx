import 'package:country_app_using_mvc_getx/app/bindings/home_bindings.dart';
import 'package:country_app_using_mvc_getx/app/bindings/splash_bindings.dart';
import 'package:country_app_using_mvc_getx/app/screen_views/home_screen.dart';
import 'package:country_app_using_mvc_getx/app/screen_views/splash_screen.dart';
import 'package:get/get.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  
  ];
}
