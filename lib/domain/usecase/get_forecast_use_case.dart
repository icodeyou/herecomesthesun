import '../model/city.dart';
import '../model/day.dart';
import '../model/weather.dart';
import '../repository/weather_repository.dart';

class GetForecastUseCase {
  final WeatherRepository _weatherRepository;

  GetForecastUseCase(WeatherRepository wr) : _weatherRepository = wr;

  Future<Map<Day, Weather>> execute(City city) {
    return _weatherRepository.getForecast(city);
  }
}
