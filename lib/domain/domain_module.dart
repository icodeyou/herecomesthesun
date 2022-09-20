import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/data_module.dart';
import 'usecase/get_cities_use_case.dart';
import 'usecase/get_current_weather_use_case.dart';
import 'usecase/get_forecast_use_case.dart';

final getWeatherUseCaseProvider = Provider.autoDispose((ref) {
  return GetCurrentWeatherUseCase(ref.watch(weatherRepositoryProvider));
});

final getForecastUseCaseProvider = Provider.autoDispose((ref) {
  return GetForecastUseCase(ref.watch(weatherRepositoryProvider));
});

final getCitiesUseCaseProvider = Provider.autoDispose((ref) {
  return GetCitiesUseCase(ref.watch(cityRepositoryProvider));
});
