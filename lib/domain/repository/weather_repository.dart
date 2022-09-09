import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather(City city);
  Future<Map<Day, Weather>> getForecast(City city);
}
