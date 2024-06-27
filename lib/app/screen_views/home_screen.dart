import 'package:country_app_using_mvc_getx/app/controllers/home_controller.dart';
import 'package:country_app_using_mvc_getx/app/network/model/country.dart';
import 'package:country_app_using_mvc_getx/app/reusable_components/api_error_widget.dart';
import 'package:country_app_using_mvc_getx/app/reusable_components/home_shimmer.dart';
import 'package:country_app_using_mvc_getx/app/reusable_components/my_widgets_animator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: GetBuilder<HomeController>(
            builder: (controller) => MyWidgetsAnimator(
              apiCallStatus: controller.apiCallStatus,
              loadingWidget: () => const HomeShimmer(),
              errorWidget: () => ApiErrorWidget(),
              successWidget: () {
                print('Result : Success ');
                return ListView.builder(itemBuilder: (context, position)
                {
                  Country country = controller.countryList[position];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.abc),
                      title: Text(country.countryName?.common ?? ""), 
                      subtitle: Text(country.countryName?.official ?? ""),
                      trailing: Icon(Icons.abc),
                      ),
                      
                      );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
