import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/data/repository/weather_repository_impl.dart';
import 'package:herecomesthesun/data/service/weather_api.dart';

final weatherApiProvider = Provider.autoDispose((ref) {
  return WeatherApi();
});

final weatherRepositoryProvider = Provider.autoDispose((ref) {
  return WeatherRepositoryImpl(ref.watch(weatherApiProvider));
});
