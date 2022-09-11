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
    List<City> cities = await getCitiesUseCase.execute();
    state = AsyncData(cities);
  }
}
