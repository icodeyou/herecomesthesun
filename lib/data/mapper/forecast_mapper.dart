import 'package:herecomesthesun/data/entity/forecast_day_entity.dart';
import 'package:herecomesthesun/data/entity/forecast_response.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';

class ForecastMapper {
  static Map<Day, Weather> dataToDomain(
      ForecastResponse forecastResponse, City city) {
    Map<Day, Weather> map = {};

    for (var forecastDay in forecastResponse.list) {
      map.putIfAbsent(Day(timestamp: forecastDay.dt),
          () => forecastDayEntityToWeather(forecastDay, city));
    }

    return map;
  }

  static Weather forecastDayEntityToWeather(
      ForecastDayEntity forecastDayEntity, City city) {
    return Weather(
        title: forecastDayEntity.weather.first.main,
        description: forecastDayEntity.weather.first.description,
        city: city,
        temp: forecastDayEntity.main.temp,
        tempMin: forecastDayEntity.main.temp_min,
        tempMax: forecastDayEntity.main.temp_max,
        humidity: forecastDayEntity.main.humidity,
        gust: forecastDayEntity.wind.gust);
  }
}
