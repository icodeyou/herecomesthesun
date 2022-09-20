import '../model/city.dart';
import '../model/day.dart';
import '../model/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather(City city);
  Future<Map<Day, Weather>> getForecast(City city);
}
