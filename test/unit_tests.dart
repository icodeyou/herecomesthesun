import 'package:flutter_test/flutter_test.dart';
import 'package:herecomesthesun/data/repository/weather_repository_impl.dart';
import 'package:herecomesthesun/data/service/weather_api.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/repository/weather_repository.dart';
import 'package:herecomesthesun/domain/usecase/get_current_weather_use_case.dart';
import 'package:herecomesthesun/domain/usecase/get_forecast_use_case.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'mock_weather_response.dart';
import 'unit_tests.mocks.dart';

class MockCity extends Mock implements City {}

class MockedHttpClient extends Mock implements Client {
  /*@override
  Future<Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(uri, headers: headers);
  }*/
}

/*class MockWeatherApi extends Mock implements WeatherApi {



  @override
  Future<CurrentWeatherResponse> getWeather(City city) async {
    return await Future.delayed(const Duration(seconds: 1)).then((_) {
      return CurrentWeatherResponse.fromJson(jsonDecode(mockWeatherResponse));
    });
  }

  Future<ForecastResponse> getForecast(City city) async {
    return await Future.delayed(const Duration(seconds: 1)).then((_) {
      return ForecastResponse.fromJson(jsonDecode(mockForecastResponse));
    });
  }
}*/

class FakeUri extends Fake implements Uri {}

@GenerateMocks([MockedHttpClient])
void main() {
  setUp(() {});
  tearDown(() {});

  MockedHttpClient mockHttpClient = MockedHttpClient();
  WeatherApi mockWeatherApi = WeatherApi(httpClient: mockHttpClient);

  WeatherRepository weatherRepository = WeatherRepositoryImpl(mockWeatherApi);
  MockCity mockCity = MockCity();

  group('Weather', () {
    test('get_current_weather', () async {
      when(mockHttpClient.get(any))
          .thenReturn(Future(() => Response(mockWeatherResponse, 200)));

      GetCurrentWeatherUseCase getCurrentWeatherUseCase =
          GetCurrentWeatherUseCase(weatherRepository);

      Weather weather = await getCurrentWeatherUseCase.execute(mockCity);

      expect(weather.tempMaxCelsius, 21.96);
      expect(weather.tempMinCelsius, 19.73);
      expect(weather.tempCelsius, 21.02);
      expect(weather.title, 'Clouds');
      expect(weather.gust, 0.0);
      expect(weather.humidity, 67);
      expect(weather.description, 'Overcast clouds');
    });

    test('get_forecast', () async {
      GetForecastUseCase getForecastUseCase =
          GetForecastUseCase(weatherRepository);

      Map<Day, Weather> completeForecast =
          await getForecastUseCase.execute(mockCity);

      completeForecast.forEach((day, weather) {
        if (day.timestampSeconds == 1663027200) {
          expect(weather.tempMaxCelsius, 14.21);
          expect(weather.tempMinCelsius, 14.21);
          expect(weather.tempCelsius, 14.21);
          expect(weather.title, 'Clear');
          expect(weather.gust, 1.56);
          expect(weather.humidity, 72);
          expect(weather.description, 'Clear sky');
        }
      });
    });
  });
}
