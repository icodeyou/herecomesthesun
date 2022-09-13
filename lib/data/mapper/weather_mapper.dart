import 'package:herecomesthesun/data/entity/current_weather_response.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/presentation/ui/utils/extensions.dart';

class WeatherMapper {
  static Weather dataToDomain(
      CurrentWeatherResponse currentWeatherResponse, City city) {
    return Weather(
        title: currentWeatherResponse.weather.first.main,
        description:
            currentWeatherResponse.weather.first.description.capitalize,
        city: city,
        tempCelsius: currentWeatherResponse.main.temp.kelvinToCelsius,
        tempMinCelsius: currentWeatherResponse.main.temp_min.kelvinToCelsius,
        tempMaxCelsius: currentWeatherResponse.main.temp_max.kelvinToCelsius,
        humidity: currentWeatherResponse.main.humidity,
        gust: currentWeatherResponse.wind.gust ?? 0);
  }
}
