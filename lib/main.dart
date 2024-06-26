import 'package:country_app_using_mvc_getx/app/bindings/home_bindings.dart';
import 'package:country_app_using_mvc_getx/app/screen_views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(initialBinding: HomeBinding(), home: HomeView());
  }
}
