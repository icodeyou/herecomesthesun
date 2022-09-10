import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herecomesthesun/data/entity/forecast_day_entity.dart';

part 'forecast_response.freezed.dart';
part 'forecast_response.g.dart';

@freezed
class ForecastResponse with _$ForecastResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ForecastResponse({
    required List<ForecastDayEntity> list,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}
