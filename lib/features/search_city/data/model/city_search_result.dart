// ignore_for_file: no_leading_underscores_for_local_identifiers

class CitySearchReslut {
  CitySearchReslut({
    required this.results,
    required this.generationtimeMs,
  });
  late final List<Results> results;
  late final double generationtimeMs;

  CitySearchReslut.fromJson(Map<String, dynamic> json) {
    results =
        List.from(json['results']).map((e) => Results.fromJson(e)).toList();
    generationtimeMs = json['generationtime_ms'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['results'] = results.map((e) => e.toJson()).toList();
    _data['generationtime_ms'] = generationtimeMs;
    return _data;
  }
}

class Results {
  Results({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.elevation,
    required this.featureCode,
    required this.countryCode,
    required this.admin1Id,
    required this.admin2Id,
    required this.admin3Id,
    required this.timezone,
    required this.countryId,
    required this.country,
    required this.admin1,
    required this.admin2,
    required this.admin3,
  });
  late final int id;
  late final String name;
  late final double latitude;
  late final double longitude;
  late final int elevation;
  late final String featureCode;
  late final String countryCode;
  late final int admin1Id;
  late final int admin2Id;
  late final int admin3Id;
  late final String timezone;
  late final int countryId;
  late final String country;
  late final String admin1;
  late final String admin2;
  late final String admin3;

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    elevation = json['elevation'];
    featureCode = json['feature_code'];
    countryCode = json['country_code'];
    admin1Id = json['admin1_id'];
    admin2Id = json['admin2_id'];
    admin3Id = json['admin3_id'];
    timezone = json['timezone'];
    countryId = json['country_id'];
    country = json['country'];
    admin1 = json['admin1'];
    admin2 = json['admin2'];
    admin3 = json['admin3'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['elevation'] = elevation;
    _data['feature_code'] = featureCode;
    _data['country_code'] = countryCode;
    _data['admin1_id'] = admin1Id;
    _data['admin2_id'] = admin2Id;
    _data['admin3_id'] = admin3Id;
    _data['timezone'] = timezone;
    _data['country_id'] = countryId;
    _data['country'] = country;
    _data['admin1'] = admin1;
    _data['admin2'] = admin2;
    _data['admin3'] = admin3;
    return _data;
  }
}
