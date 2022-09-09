import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/domain/usecase/get_current_weather_use_case.dart';
import 'package:herecomesthesun/presentation/states/home_weather_state.dart';

class HomeWeatherController extends StateNotifier<HomeWeatherState> {
  final GetCurrentWeatherUseCase getCurrentWeatherUseCase;

  HomeWeatherController({required this.getCurrentWeatherUseCase})
      : super(const HomeWeatherState.init());

  Future<void> getWeather(City city) async {
    state = const HomeWeatherState.loading();
    Weather currentWeather = await getCurrentWeatherUseCase.execute(city);
    if (state.isForecastLoaded) {
      // TODO : construct CompleteForecast
      //state = HomeWeatherState.bothLoaded(completeForecast);
    } else {
      state = HomeWeatherState.currentWeatherLoaded(currentWeather);
    }
    // catch error
  }

  void getForecast(HomeWeatherState state) {
    // TODO
  }
}
