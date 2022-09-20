import '../model/city.dart';
import '../model/weather.dart';
import '../repository/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetCurrentWeatherUseCase(WeatherRepository wr) : _weatherRepository = wr;

  Future<Weather> execute(City city) {
    return _weatherRepository.getWeather(city);
  }
}
