import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herecomesthesun/domain/model/complete_forecast.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';

part 'home_weather_state.freezed.dart';

@freezed
class HomeWeatherState with _$HomeWeatherState {
  const HomeWeatherState._();

  const factory HomeWeatherState.init() = _Init;
  const factory HomeWeatherState.loading() = _Loading;
  const factory HomeWeatherState.currentWeatherLoaded(Weather weather) =
      _CurrentWeatherLoaded;
  const factory HomeWeatherState.forecastLoaded(Map<Day, Weather> next5days) =
      _ForecastLoaded;
  const factory HomeWeatherState.bothLoaded(CompleteForecast completeForecast) =
      _BothLoaded;
  const factory HomeWeatherState.error(Exception exception) = _Error;

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get isForecastLoaded =>
      maybeMap(forecastLoaded: (_) => true, orElse: () => false);

  bool get isCurrentWeatherLoaded =>
      maybeMap(currentWeatherLoaded: (_) => true, orElse: () => false);

  Weather? get currentWeather =>
      maybeWhen(currentWeatherLoaded: (data) => data, orElse: () => null);

  CompleteForecast? get completeForecast =>
      maybeWhen(bothLoaded: (data) => data, orElse: () => null);
}
