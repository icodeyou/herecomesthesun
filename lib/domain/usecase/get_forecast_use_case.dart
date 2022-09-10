import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/repository/weather_repository.dart';

class GetForecastUseCase {
  final WeatherRepository _weatherRepository;

  GetForecastUseCase(WeatherRepository wr) : _weatherRepository = wr;

  Future<Map<Day, Weather>> execute(City city) {
    return _weatherRepository.getForecast(city);
  }
}
