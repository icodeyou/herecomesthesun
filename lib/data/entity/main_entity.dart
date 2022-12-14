// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_entity.freezed.dart';
part 'main_entity.g.dart';

@freezed
class MainEntity with _$MainEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MainEntity({
    required double temp,
    required double feels_like,
    required double temp_min,
    required double temp_max,
    required int pressure,
    required int humidity,
  }) = _MainEntity;

  factory MainEntity.fromJson(Map<String, dynamic> json) =>
      _$MainEntityFromJson(json);
}
