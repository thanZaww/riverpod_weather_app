import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/providers/dio/dio_provider.dart';
import '../data/service/city_search_service.dart';
import 'state/city_search_state.dart';

class CitySearchProvider extends Notifier<CitySearchState> {
  CitySearchState citySearchState = CitySearchForm();
  @override
  build() {
    return citySearchState;
  }

  late final _dio = ref.read(dioProvider);
  late final _citySearchService = CitySearchService(_dio);

  void searchCity(String name) async {
    citySearchState = CitySearchLoading();
    try {
      final citySearchReslut = await _citySearchService.searchCity(
          name: name, count: 10, language: 'en', format: 'json');
      citySearchState = CitySearchSuccess(citySearchReslut);
    } catch (e) {
      citySearchState = CitySearchFailed(e.toString());
    }
  }
}

final citySearchProvider =
    NotifierProvider<CitySearchProvider, CitySearchState>(
  () => CitySearchProvider(),
);
