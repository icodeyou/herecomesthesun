import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/complete_forecast.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/usecase/get_current_weather_use_case.dart';
import 'package:herecomesthesun/presentation/states/home_weather_state.dart';

class HomeWeatherController extends StateNotifier<HomeWeatherState> {
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;

  HomeWeatherController({required this.getCurrentWeatherUseCase})
      : super(const HomeWeatherState.init());

  Future<void> getCurrentWeatherAndForecast(City city) async {
    _getCurrentWeather(city);
    _getForecast(city);
  }

  Future<void> _getCurrentWeather(City city) async {
    state = const HomeWeatherState.loading();
    Weather currentWeather = await getCurrentWeatherUseCase.execute(city);
    CompleteForecast completeForecast =
        CompleteForecast(currentWeather: currentWeather, forecast: null);
    if (state.isForecastLoaded) {
      // TODO : construct CompleteForecast
      //state = HomeWeatherState.bothLoaded(completeForecast);
    } else {
      state = HomeWeatherState.currentWeatherLoaded(completeForecast);
    }
    // catch error
  }

  Future<void> _getForecast(City city) async {
    // TEST
    /*return Future.delayed(Duration(seconds: 3)).then((value) {
      state = HomeWeatherState.error(Exception(), city);
    });*/
  }
}
