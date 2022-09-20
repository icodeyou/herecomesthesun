import 'package:freezed_annotation/freezed_annotation.dart';

import 'day.dart';
import 'weather.dart';

part 'complete_forecast.freezed.dart';

@freezed
class CompleteForecast with _$CompleteForecast {
  const factory CompleteForecast(
      {required Weather currentWeather,
      required Map<Day, Weather>? forecast}) = _CompleteForecast;
}
