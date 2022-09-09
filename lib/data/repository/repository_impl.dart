import 'package:herecomesthesun/data/entity/current_weather_response.dart';
import 'package:herecomesthesun/data/mapper/weather_mapper.dart';
import 'package:herecomesthesun/data/service/weather_api.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final WeatherApi _weatherApi;
  RepositoryImpl(WeatherApi weatherApi) : _weatherApi = weatherApi;

  @override
  Future<Weather> getWeather(City city) async {
    CurrentWeatherResponse dataModel = await _weatherApi.getWeather(city);
    return WeatherMapper.domainToData(dataModel, city);
  }
}
