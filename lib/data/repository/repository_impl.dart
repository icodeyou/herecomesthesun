import 'package:herecomesthesun/data/service/weather_api.dart';
import 'package:herecomesthesun/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final WeatherApi _api;
  RepositoryImpl(WeatherApi api) : _api = api;
}
