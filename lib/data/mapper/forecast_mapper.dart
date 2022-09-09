import 'package:herecomesthesun/data/entity/forecast_response.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';

class ForecastMapper {
  static Map<Day, Weather> domainToData(
      ForecastResponse forecastResponse, City city) {
    Map<Day, Weather> map = {};

    for (var forecastDay in forecastResponse.list) {
      map.putIfAbsent(forecastDay.main.convertTimestampToDay(), () => forecastDay.weather)
    }

    return map;
  }

  Day convertTimestampToDay() {
    
  }
}
