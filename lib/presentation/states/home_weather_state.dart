import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/city.dart';
import '../../domain/model/complete_forecast.dart';
import '../../domain/model/day.dart';
import '../../domain/model/weather.dart';

part 'home_weather_state.freezed.dart';

@freezed
class HomeWeatherState with _$HomeWeatherState {
  const HomeWeatherState._();

  const factory HomeWeatherState.init() = _Init;
  const factory HomeWeatherState.loading() = _Loading;
  const factory HomeWeatherState.currentWeatherLoaded(
      CompleteForecast completeForecast) = _CurrentWeatherLoaded;
  const factory HomeWeatherState.forecastLoaded(Map<Day, Weather> forecast) =
      _ForecastLoaded;
  const factory HomeWeatherState.bothLoaded(CompleteForecast completeForecast) =
      _BothLoaded;
  const factory HomeWeatherState.error(Exception exception, City city) = _Error;

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get isForecastLoaded =>
      maybeMap(forecastLoaded: (_) => true, orElse: () => false);

  bool get isCurrentWeatherLoaded =>
      maybeMap(currentWeatherLoaded: (_) => true, orElse: () => false);

  CompleteForecast? get completeForecast => maybeWhen(
      bothLoaded: (completeForecast) => completeForecast, orElse: () => null);

  Weather? get currentWeather => maybeWhen(
      currentWeatherLoaded: (completeForecast) =>
          completeForecast.currentWeather,
      orElse: () => null);

  Map<Day, Weather>? get forecast => maybeWhen(
      currentWeatherLoaded: (completeForecast) => completeForecast.forecast,
      orElse: () => null);
}
