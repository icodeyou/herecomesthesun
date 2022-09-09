import 'dart:convert';

import 'package:herecomesthesun/data/entity/current_weather_response.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:http/http.dart';

class WeatherRequestFailure implements Exception {}

class WeatherApi {
  static const _baseUrl = 'api.openweathermap.org';
  final Client _httpClient;

  WeatherApi({Client? httpClient}) : _httpClient = httpClient ?? Client();

  static Future<CurrentWeatherResponse> getWeather(City city) async {
    Map<String, String> queryParameters = {
      'lat': '44.34',
      'lon': '44.34',
      'appId': 'e867aaf3de9fc960cb64326319ab39ad'
    };
    Uri request = Uri.https(_baseUrl, '/data/2.5/weather', queryParameters);
    Response response = await Client().get(request); //FIXME

    if (response.statusCode != 200) {
      throw WeatherRequestFailure();
    }
    var jsonResponse = jsonDecode(response.body);
    return CurrentWeatherResponse.fromJson(jsonResponse);
  }
}
