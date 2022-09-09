import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herecomesthesun/data/entity/main_entity.dart';
import 'package:herecomesthesun/data/entity/wind_entity.dart';
import 'package:herecomesthesun/domain/model/weather.dart';

part 'forecast_day_entity.freezed.dart';
part 'forecast_day_entity.g.dart';

@freezed
class ForecastDayEntity with _$ForecastDayEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ForecastDayEntity(
      {MainEntity main, Weather weather, WindEntity wind}) = _ForecastDayEntity;

  factory ForecastDayEntity.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayEntityFromJson(json);
}
