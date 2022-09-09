import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';

part 'complete_forecast.freezed.dart';

@freezed
class CompleteForecast with _$CompleteForecast {
  const factory CompleteForecast(
      {required Weather currentWeather,
      required Map<Day, Weather> next5days}) = _CompleteForecast;
}
