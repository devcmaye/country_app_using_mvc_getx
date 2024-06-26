import 'package:country_app_using_mvc_getx/network/api/apiservice.dart';
import 'package:country_app_using_mvc_getx/network/model/country.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  var countryList = <Country>[].obs;
  var isLoading = true.obs;

  late ApiService _apiService;

  @override
  void onInit() {
    super.onInit();
    final dio = Dio(BaseOptions(baseUrl: Constants.baseURL));
    _apiService = ApiService(dio);
    fetchCountries();
  }
  void fetchCountries() async {
    try {
      isLoading(true);
      final countries = await _apiService.getCountries();
      countryList.assignAll(countries);
    } catch (e) {
      print("Error123 :  ${e.toString()}");
      Get.snackbar("Error", "Failed to fetch countries");
    } finally {
      isLoading(false);
    }
  }
}
