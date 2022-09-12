import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:herecomesthesun/data/entity/current_weather_response.dart';
import 'package:herecomesthesun/data/repository/weather_repository_impl.dart';
import 'package:herecomesthesun/data/service/weather_api.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/repository/weather_repository.dart';
import 'package:herecomesthesun/domain/usecase/get_current_weather_use_case.dart';
import 'package:mockito/mockito.dart';

import 'mock_weather_response.dart';

class MockCity extends Mock implements City {}

class MockWeather extends Mock implements Weather {}

class MockDay extends Mock implements Day {}

class MockWeatherApi extends Mock implements WeatherApi {
  @override
  Future<CurrentWeatherResponse> getWeather(City city) async {
    return await Future.delayed(const Duration(seconds: 1)).then((_) {
      return CurrentWeatherResponse.fromJson(jsonDecode(mockWeatherResponse));
    });
  }
}

void main() {
  setUp(() {});
  tearDown(() {});

  MockWeatherApi mockWeatherApi = MockWeatherApi();

  group('Weather', () {
    test('get_current_weather', () async {
      WeatherRepository weatherRepository =
          WeatherRepositoryImpl(mockWeatherApi);
      GetCurrentWeatherUseCase getCurrentWeatherUseCase =
          GetCurrentWeatherUseCase(weatherRepository);

      MockCity mockCity = MockCity();

      var weather = await getCurrentWeatherUseCase.execute(mockCity);

      expect(weather.gust, 0.0);
      expect(weather.humidity, 67);
      expect(weather.description, 'Overcast clouds');
    });
    test('get_forecast', () {});
  });
}
