import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/data/data_module.dart';
import 'package:herecomesthesun/domain/usecase/get_current_weather_use_case.dart';

final getWeatherUseCaseProvider = Provider.autoDispose((ref) {
  return GetCurrentWeatherUseCase(ref.watch(weatherRepositoryProvider));
});
