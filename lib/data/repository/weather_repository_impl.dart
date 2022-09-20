import '../../domain/model/city.dart';
import '../../domain/model/day.dart';
import '../../domain/model/weather.dart';
import '../../domain/repository/weather_repository.dart';
import '../entity/current_weather_response.dart';
import '../entity/forecast_response.dart';
import '../mapper/forecast_mapper.dart';
import '../mapper/weather_mapper.dart';
import '../service/weather_api.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _weatherApi;
  WeatherRepositoryImpl(WeatherApi weatherApi) : _weatherApi = weatherApi;

  @override
  Future<Weather> getWeather(City city) async {
    CurrentWeatherResponse dataModel = await _weatherApi.getWeather(city);
    return WeatherMapper.dataToDomain(dataModel, city);
  }

  @override
  Future<Map<Day, Weather>> getForecast(City city) async {
    ForecastResponse dataModel = await _weatherApi.getForecast(city);
    return ForecastMapper.dataToDomain(dataModel, city);
  }
}
