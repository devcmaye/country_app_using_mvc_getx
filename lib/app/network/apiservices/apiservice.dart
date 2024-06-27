
import 'package:country_app_using_mvc_getx/app/network/model/country.dart';
import 'package:country_app_using_mvc_getx/app/network/remote/api_constants.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

  part 'apiservice.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class ApiService {
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @GET("all")
  Future<List<Country>> getCountries();
}

