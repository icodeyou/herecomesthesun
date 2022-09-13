import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/complete_forecast.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/usecase/get_current_weather_use_case.dart';
import 'package:herecomesthesun/domain/usecase/get_forecast_use_case.dart';
import 'package:herecomesthesun/presentation/states/home_weather_state.dart';

class HomeWeatherController extends StateNotifier<HomeWeatherState> {
  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;
  final GetForecastUseCase _getForecastUseCase;

  HomeWeatherController(
      {required GetCurrentWeatherUseCase getCurrentWeatherUseCase,
      required GetForecastUseCase getForecastUseCase})
      : _getCurrentWeatherUseCase = getCurrentWeatherUseCase,
        _getForecastUseCase = getForecastUseCase,
        super(const HomeWeatherState.init());

  Future<void> getCurrentWeatherAndForecast(City city) async {
    state = const HomeWeatherState.loading();
    _getCurrentWeather(city);
    _getForecast(city);
  }

  Future<void> _getCurrentWeather(City city) async {
    try {
      Weather currentWeather = await _getCurrentWeatherUseCase.execute(city);
      if (state.isForecastLoaded) {
        state = HomeWeatherState.bothLoaded(CompleteForecast(
            currentWeather: currentWeather, forecast: state.forecast));
      } else {
        state = HomeWeatherState.currentWeatherLoaded(
            CompleteForecast(currentWeather: currentWeather, forecast: null));
      }
    } on Exception catch (e) {
      state = HomeWeatherState.error(e, city);
    }
  }

  Future<void> _getForecast(City city) async {
    // TEST
    /*return Future.delayed(Duration(seconds: 3)).then((value) {
      state = HomeWeatherState.error(Exception(), city);
    });*/

    try {
      var forecast = await _getForecastUseCase.execute(city);

      if (state.isCurrentWeatherLoaded) {
        state = HomeWeatherState.bothLoaded(CompleteForecast(
            currentWeather: state.currentWeather!, forecast: forecast));
      } else {
        state = HomeWeatherState.forecastLoaded(forecast);
      }
    } on Exception catch (e) {
      state = HomeWeatherState.error(e, city);
    }
  }
}
