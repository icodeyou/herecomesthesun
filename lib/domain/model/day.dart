import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'day.freezed.dart';

@freezed
class Day with _$Day {
  const Day._();

  const factory Day({
    required int timestampSeconds,
  }) = _Day;

  String getDayOfTheWeek() {
    DateTime date =
        DateTime.fromMillisecondsSinceEpoch(timestampSeconds * 1000);
    return DateFormat('EEEE').format(date);
  }
}
