import 'package:country_app_using_mvc_getx/app/network/apiservices/apiservice.dart';
import 'package:country_app_using_mvc_getx/app/network/model/country.dart';
import 'package:country_app_using_mvc_getx/app/network/remote/api_call_status.dart';
import 'package:country_app_using_mvc_getx/app/network/remote/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // api call status
  ApiCallStatus apiCallStatus = ApiCallStatus.loading;

  var countryList = <Country>[].obs;
  var isLoading = true.obs;

  late ApiService _apiService;

  @override
  void onInit() {
    super.onInit();
    final dio = Dio(BaseOptions(baseUrl: ApiConstants.baseURL));
    _apiService = ApiService(dio);
    fetchCountries();
  }

  void fetchCountries() async {
    try {
      isLoading(true);
      update();
      final countries = await _apiService.getCountries();
      countryList.assignAll(countries);
      apiCallStatus = ApiCallStatus.success;
    } catch (e) {
      print("Error123 :  ${e.toString()}");
      Get.snackbar("Error", "Failed to fetch countries");
      apiCallStatus = ApiCallStatus.error;
    } finally {
      isLoading(false);
      update();
    }
  }
}
