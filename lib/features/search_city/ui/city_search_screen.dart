import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_weather_app/features/search_city/data/model/city_search_result.dart';
import 'package:riverpod_weather_app/features/search_city/providers/city_search_provider.dart';

import '../providers/state/city_search_state.dart';

class CitySearchScreen extends ConsumerWidget {
  CitySearchScreen({super.key});

  final TextEditingController _citySearchController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CitySearchState citySearchState = ref.watch(citySearchProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(
              controller: _citySearchController,
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              hintText: 'Search city.....',
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          _citySearchResultWidget(citySearchState),
        ],
      ),
    );
  }

  Widget _citySearchResultWidget(CitySearchState state) {
    return switch (state) {
      CitySearchForm() => const Text('Please search a city'),
      CitySearchLoading() => const CircularProgressIndicator.adaptive(),
      CitySearchSuccess(citySearchReslut: CitySearchReslut citySearchReslut) =>
        Text('Success $citySearchReslut'),
      CitySearchFailed(errorMessage: String errorMessage) => Text(errorMessage),
    };
  }
}
