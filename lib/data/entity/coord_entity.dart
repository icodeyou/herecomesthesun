import 'package:freezed_annotation/freezed_annotation.dart';

part 'coord_entity.freezed.dart';
part 'coord_entity.g.dart';

@freezed
class CoordEntity with _$CoordEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CoordEntity({
    required double lon,
    required double lat,
  }) = _CoordEntity;

  factory CoordEntity.fromJson(Map<String, dynamic> json) =>
      _$CoordEntityFromJson(json);
}
