import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/usecase/get_cities_use_case.dart';

class ChangeCityController extends StateNotifier<AsyncValue<List<City>>> {
  final GetCitiesUseCase getCitiesUseCase;
  List<City> _cities = [];

  ChangeCityController(this.getCitiesUseCase) : super(const AsyncLoading()) {
    unawaited(getCities());
  }

  Future<void> getCities() async {
    state = const AsyncLoading();
    try {
      _cities = await getCitiesUseCase.execute();
      state = AsyncData(_cities);
    } on Exception catch (e) {
      state = AsyncError(e);
    }
  }

  void filterCities(String value) {
    List<City> filteredList = _cities
        .where((city) => city.name.toLowerCase().contains(value.toLowerCase()))
        .toList();
    state = AsyncData(filteredList);
  }
}
