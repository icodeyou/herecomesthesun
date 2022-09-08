import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  const factory Day({
    required double timestamp,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}
