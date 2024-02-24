import '../../data/model/city_search_result.dart';

sealed class CitySearchState {}

class CitySearchLoading extends CitySearchState {}

class CitySearchForm extends CitySearchState {}

class CitySearchSuccess extends CitySearchState {
  final CitySearchReslut citySearchReslut;

  CitySearchSuccess(this.citySearchReslut);
}

class CitySearchFailed extends CitySearchState {
  final String errorMessage;

  CitySearchFailed(this.errorMessage);
}
