import 'package:herecomesthesun/data/entity/current_weather_response.dart';
import 'package:herecomesthesun/data/entity/forecast_response.dart';
import 'package:herecomesthesun/data/mapper/forecast_mapper.dart';
import 'package:herecomesthesun/data/mapper/weather_mapper.dart';
import 'package:herecomesthesun/data/service/weather_api.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/repository/weather_repository.dart';

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
