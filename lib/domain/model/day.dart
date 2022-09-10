import 'package:freezed_annotation/freezed_annotation.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  const factory Day({
    required int timestamp,
  }) = _Day;

  /*String getDayOfTheWeek() {
    return 'Monday';
  }*/
}
