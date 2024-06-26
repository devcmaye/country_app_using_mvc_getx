import 'package:country_app_using_mvc_getx/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Country List'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.countryList.isEmpty) {
          return Center(child: Text('No countries found'));
        } else {
          return ListView.builder(
            itemCount: controller.countryList.length,
            itemBuilder: (context, index) {
              final country = controller.countryList[index];
              print(country.countryName?.official.toString());
              return Card(
                color: Color.fromARGB(59, 255, 254, 254),
                child: ListTile(
                  title: Text(country.countryName?.official ?? ""),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
