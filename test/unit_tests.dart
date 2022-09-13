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
import 'package:mocktail/mocktail.dart';

import 'mock_forecast_response.dart';
import 'mock_weather_response.dart';

class MockCity extends Mock implements City {
  @override
  String get name => 'London';

  @override
  String get country => 'UK';

  @override
  double get latitude => 0.0;

  @override
  double get longitude => 0.0;
}

class MockHttpClient extends Mock implements Client {
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

void main() {
  setUp(() {
    registerFallbackValue(FakeUri());
  });
  tearDown(() {});

  MockHttpClient mockHttpClient = MockHttpClient();
  WeatherApi mockWeatherApi = WeatherApi(httpClient: mockHttpClient);

  WeatherRepository weatherRepository = WeatherRepositoryImpl(mockWeatherApi);
  MockCity mockCity = MockCity();

  group('Weather', () {
    test('get_current_weather_success', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(((_) async {
        return Response(mockWeatherResponse, 200);
      }));

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

    test('get_current_weather_fail', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(((_) async {
        return Response(mockWeatherResponse, 400);
      }));

      GetCurrentWeatherUseCase getCurrentWeatherUseCase =
          GetCurrentWeatherUseCase(weatherRepository);

      try {
        await getCurrentWeatherUseCase.execute(mockCity);
      } catch (e) {
        assert(e is WeatherRequestFailure);
      }
    });

    test('get_forecast_success', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(((_) async {
        return Response(mockForecastResponse, 200);
      }));

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

    test('get_forecast_fail', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(((_) async {
        return Response(mockWeatherResponse, 400);
      }));

      GetForecastUseCase getForecastUseCase =
          GetForecastUseCase(weatherRepository);

      try {
        await getForecastUseCase.execute(mockCity);
      } catch (e) {
        assert(e is WeatherRequestFailure);
      }
    });
  });
}
