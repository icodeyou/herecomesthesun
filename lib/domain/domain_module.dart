import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/data/data_module.dart';
import 'package:herecomesthesun/domain/usecase/get_cities_use_case.dart';
import 'package:herecomesthesun/domain/usecase/get_current_weather_use_case.dart';
import 'package:herecomesthesun/domain/usecase/get_forecast_use_case.dart';

final getWeatherUseCaseProvider = Provider.autoDispose((ref) {
  return GetCurrentWeatherUseCase(ref.watch(weatherRepositoryProvider));
});

final getForecastUseCaseProvider = Provider.autoDispose((ref) {
  return GetForecastUseCase(ref.watch(weatherRepositoryProvider));
});

final getCitiesUseCaseProvider = Provider.autoDispose((ref) {
  return GetCitiesUseCase(ref.watch(cityRepositoryProvider));
});
