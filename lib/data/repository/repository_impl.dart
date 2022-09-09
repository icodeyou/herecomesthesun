import 'package:herecomesthesun/data/service/weather_api.dart';
import 'package:herecomesthesun/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final WeatherApi _weatherApi;
  RepositoryImpl(WeatherApi weatherApi) : _weatherApi = weatherApi;
}
