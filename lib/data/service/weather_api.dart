import 'dart:convert';

import 'package:herecomesthesun/data/entity/current_weather_response.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:http/http.dart';

class WeatherRequestFailure implements Exception {}

const apiKey = 'e867aaf3de9fc960cb64326319ab39ad';

class WeatherApi {
  static const _baseUrl = 'api.openweathermap.org';
  final Client _httpClient;

  WeatherApi({Client? httpClient}) : _httpClient = httpClient ?? Client();

  Future<CurrentWeatherResponse> getWeather(City city) async {
    Map<String, String> queryParameters = {
      'lat': city.latitude.toStringAsFixed(2),
      'lon': city.longitude.toStringAsFixed(2),
      'appId': apiKey
    };
    Uri request = Uri.https(_baseUrl, '/data/2.5/weather', queryParameters);
    Response response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    return CurrentWeatherResponse.fromJson(jsonDecode(response.body));
  }
}
