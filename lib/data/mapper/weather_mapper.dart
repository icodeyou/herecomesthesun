import '../../domain/model/city.dart';
import '../../domain/model/weather.dart';
import '../../presentation/ui/utils/extensions.dart';
import '../entity/current_weather_response.dart';

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
