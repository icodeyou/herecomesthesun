import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';
part 'weather_entity.g.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory WeatherEntity({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherEntity;

  factory WeatherEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherEntityFromJson(json);
}
