import 'package:freezed_annotation/freezed_annotation.dart';

import 'main_entity.dart';
import 'weather_entity.dart';
import 'wind_entity.dart';

part 'forecast_day_entity.freezed.dart';
part 'forecast_day_entity.g.dart';

@freezed
class ForecastDayEntity with _$ForecastDayEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ForecastDayEntity(
      {required int dt,
      required MainEntity main,
      required List<WeatherEntity> weather,
      required WindEntity wind}) = _ForecastDayEntity;

  factory ForecastDayEntity.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayEntityFromJson(json);
}
