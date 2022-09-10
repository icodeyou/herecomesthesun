import 'package:herecomesthesun/data/entity/current_weather_response.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/weather.dart';

class WeatherMapper {
  static Weather dataToDomain(
      CurrentWeatherResponse currentWeatherResponse, City city) {
    return Weather(
        title: currentWeatherResponse.weather.first.main,
        description: currentWeatherResponse.weather.first.description,
        city: city,
        temp: currentWeatherResponse.main.temp,
        tempMin: currentWeatherResponse.main.temp_min,
        tempMax: currentWeatherResponse.main.temp_max,
        humidity: currentWeatherResponse.main.humidity,
        gust: currentWeatherResponse.wind.gust);
  }
}
