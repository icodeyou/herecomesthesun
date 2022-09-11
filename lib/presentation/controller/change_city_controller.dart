import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/usecase/get_cities_use_case.dart';

class ChangeCityController extends StateNotifier<AsyncValue<List<City>>> {
  final GetCitiesUseCase getCitiesUseCase;

  ChangeCityController(this.getCitiesUseCase) : super(const AsyncLoading()) {
    unawaited(getCities());
  }

  Future<void> getCities() async {
    state = const AsyncLoading();
    try {
      List<City> cities = await getCitiesUseCase.execute();
      state = AsyncData(cities);
    } on Exception catch (e) {
      state = AsyncError(e);
    }
  }
}
