import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind_entity.freezed.dart';
part 'wind_entity.g.dart';

@freezed
class WindEntity with _$WindEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory WindEntity({
    required double speed,
    required int deg,
    required double gust,
  }) = _WindEntity;

  factory WindEntity.fromJson(Map<String, dynamic> json) =>
      _$WindEntityFromJson(json);
}
