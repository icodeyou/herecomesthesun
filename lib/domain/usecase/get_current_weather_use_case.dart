import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetCurrentWeatherUseCase(WeatherRepository wr) : _weatherRepository = wr;

  Future<Weather> execute(City city) {
    return _weatherRepository.getWeather(city);
  }
}
