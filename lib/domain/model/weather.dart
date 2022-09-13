import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herecomesthesun/domain/model/city.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String title,
    required String description,
    required City city,
    required double tempCelsius,
    required double tempMinCelsius,
    required double tempMaxCelsius,
    required int humidity,
    required double gust,
  }) = _Weather;
}
