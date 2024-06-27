import 'package:country_app_using_mvc_getx/app/routes/app_pages.dart';
import 'package:get/get.dart';



class SplashController extends GetxController {

  @override
  void onInit() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offNamed(Routes.HOME);
    super.onInit();
  }

}
