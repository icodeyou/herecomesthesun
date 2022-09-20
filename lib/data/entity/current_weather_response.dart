import 'package:freezed_annotation/freezed_annotation.dart';

import 'coord_entity.dart';
import 'main_entity.dart';
import 'weather_entity.dart';
import 'wind_entity.dart';

part 'current_weather_response.freezed.dart';
part 'current_weather_response.g.dart';

@freezed
class CurrentWeatherResponse with _$CurrentWeatherResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CurrentWeatherResponse(
      {required CoordEntity coord,
      required List<WeatherEntity> weather,
      required MainEntity main,
      required WindEntity wind}) = _CurrentWeatherResponse;

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);
}
