// ignore_for_file: depend_on_referenced_packages

import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../../../../common/constant/api_constant.dart';
import '../model/city_search_result.dart';

part 'city_search_service.g.dart';

@RestApi(baseUrl: ApiConstant.citySearchBaseUrl)
sealed class CitySearchService {
  factory CitySearchService(Dio dio) => _CitySearchService(dio);
  @GET(ApiConstant.citySearchEndpoint)
  Future<CitySearchReslut> searchCity({
    @Query('name') required String name,
    @Query('count') required int count,
    @Query('language') required String language,
    @Query('json') required String format,
  });
}
