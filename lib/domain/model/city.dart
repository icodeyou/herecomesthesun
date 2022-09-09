import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
abstract class City with _$City {
  const factory City({
    required String name,
    required String Country,
    required double latitude,
    required double longitude,
  }) = _City;
}
