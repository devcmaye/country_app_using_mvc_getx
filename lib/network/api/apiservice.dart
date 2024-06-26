
import 'package:country_app_using_mvc_getx/network/model/country.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

  part 'apiservice.g.dart';

@RestApi(baseUrl: Constants.baseURL)
abstract class ApiService {
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @GET("all")
  Future<List<Country>> getCountries();
}



class Constants {
  static const String baseURL = "https://restcountries.com/v3.1/";
}
