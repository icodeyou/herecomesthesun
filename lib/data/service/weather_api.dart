import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../../domain/model/city.dart';
import '../../presentation/ui/utils/print.dart';
import '../entity/current_weather_response.dart';
import '../entity/forecast_response.dart';

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

    if (kDebugMode) {
      Print.info('GET REQUEST : $request');
    }

    Response response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    return CurrentWeatherResponse.fromJson(jsonDecode(response.body));
  }

  Future<ForecastResponse> getForecast(City city) async {
    Map<String, String> queryParameters = {
      'lat': city.latitude.toStringAsFixed(2),
      'lon': city.longitude.toStringAsFixed(2),
      'appId': apiKey
    };

    Uri request = Uri.https(_baseUrl, '/data/2.5/forecast', queryParameters);

    if (kDebugMode) {
      Print.info('GET REQUEST : $request');
    }

    Response response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    return ForecastResponse.fromJson(jsonDecode(response.body));
  }
}
