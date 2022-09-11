import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/domain_module.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/model/complete_forecast.dart';
import 'package:herecomesthesun/domain/model/day.dart';
import 'package:herecomesthesun/domain/model/weather.dart';
import 'package:herecomesthesun/presentation/controller/home_weather_controller.dart';
import 'package:herecomesthesun/presentation/states/home_weather_state.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/styles/colors.dart';
import 'package:herecomesthesun/presentation/ui/styles/constants.dart';
import 'package:herecomesthesun/presentation/ui/styles/decorations.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_error_details.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_main_button.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_progress.dart';

final _homeCurrentWeatherController =
    StateNotifierProvider.autoDispose<HomeWeatherController, HomeWeatherState>(
        (ref) {
  var weatherUseCase = ref.watch(getWeatherUseCaseProvider);
  var forecastUsecase = ref.watch(getForecastUsecaseProvider);
  return HomeWeatherController(
      getCurrentWeatherUseCase: weatherUseCase,
      getForecastUseCase: forecastUsecase);
});

class WeatherPage extends ConsumerStatefulWidget {
  const WeatherPage({super.key});

  @override
  ConsumerState createState() => _WeatherPageState();
}

class _WeatherPageState extends ConsumerState<WeatherPage> {
  late final HomeWeatherController _homeWeatherNotifier;
  HomeWeatherState _state = const HomeWeatherState.init();

  final double _forecastItemWidth = 140;
  final double _forecastItemHeight = 250;

  @override
  void initState() {
    _homeWeatherNotifier = ref.read(_homeCurrentWeatherController.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _state = ref.watch(_homeCurrentWeatherController);

    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return _state.when(
      init: _welcomeScreen,
      loading: () => const ProgressWidget(),
      error: (exception, city) {
        // TODO : Exhaustive errors
        return Column(
          children: [
            ErrorDetailsWidget(
                errorMessage: 'There has been an error loading the weather.',
                retryCallback: () async {
                  _homeWeatherNotifier.getCurrentWeatherAndForecast(city);
                }),
            _changeCityButton(),
          ],
        );
      },
      currentWeatherLoaded: (completeForecast) =>
          _loadedScreen(completeForecast),
      forecastLoaded: (_) => const ProgressWidget(),
      bothLoaded: (completeForecast) => _loadedScreen(completeForecast),
    );
  }

  Widget _welcomeScreen() {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.all(UI.defaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: Decorations.box,
            padding: const EdgeInsets.all(UI.boxPadding),
            child: const Text(
              Strings.welcomeMessage,
              style: TextStyle(fontSize: UI.textS),
            ),
          ),
          MainButtonWidget(
            message: Strings.pickCity,
            onPressed: () async {
              _homeWeatherNotifier.getCurrentWeatherAndForecast(const City(
                  name: 'London',
                  country: 'UK',
                  latitude: 43.4,
                  longitude: 43.4));
            },
          )
        ],
      ),
    );
  }

  Widget _loadedScreen(CompleteForecast completeForecast) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(UI.defaultPadding),
        child: Column(
          children: [
            _currentWeather(completeForecast.currentWeather),
            const SizedBox(height: UI.defaultPadding * 2),
            _forecast(completeForecast.forecast)
          ],
        ),
      ),
    );
  }

  Widget _currentWeather(Weather weather) {
    return Column(
      children: [
        const SizedBox(height: UI.defaultPadding),
        Text(
          '${weather.city.name}, ${weather.city.country}',
          style: const TextStyle(fontSize: UI.textM),
        ),
        const SizedBox(height: UI.defaultPadding),
        _changeCityButton(),
        const SizedBox(height: UI.defaultPadding * 2),
        Container(
          decoration: Decorations.box,
          padding: const EdgeInsets.all(UI.defaultPadding),
          child: Stack(
            children: [
              const Text(
                Strings.today,
                style:
                    TextStyle(fontSize: UI.textS, fontWeight: FontWeight.bold),
              ),
              Center(
                  child: Column(
                children: [
                  const SizedBox(height: UI.defaultPadding),
                  Text(
                    weather.title,
                    style: const TextStyle(fontSize: UI.textL),
                  ),
                  Text(
                    weather.description,
                    style: const TextStyle(fontSize: UI.textM),
                  ),
                  const SizedBox(height: UI.defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '${weather.temp} °C',
                            style: const TextStyle(fontSize: UI.textM),
                          ),
                          Text(
                            '${Strings.weatherMin} : ${weather.tempMin} °C',
                            style: const TextStyle(fontSize: UI.textXS),
                          ),
                          Text(
                            '${Strings.weatherMax} : ${weather.tempMax} °C',
                            style: const TextStyle(fontSize: UI.textXS),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '${Strings.weatherWind} : ${weather.gust} m/s',
                            style: const TextStyle(fontSize: UI.textS),
                          ),
                          Text(
                            '${Strings.weatherHumidity} : ${weather.humidity}%',
                            style: const TextStyle(fontSize: UI.textS),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: UI.defaultPadding),
                ],
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _forecast(Map<Day, Weather>? forecast) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: Divider(
                endIndent: UI.defaultPadding,
                thickness: 1,
                color: MyColors.text,
              ),
            ),
            Text(Strings.nextDays, style: TextStyle(fontSize: UI.textM)),
            Expanded(
              child: Divider(
                indent: UI.defaultPadding,
                thickness: 1,
                color: MyColors.text,
              ),
            )
          ],
        ),
        const SizedBox(height: UI.defaultPadding * 2),
        if (forecast == null) const ProgressWidget() else _caroussel(forecast)
      ],
    );
  }

  Widget _caroussel(Map<Day, Weather> forecast) {
    return SizedBox(
      height: _forecastItemHeight,
      child: ListView.separated(
          shrinkWrap: true,
          itemCount: forecast.length,
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var key = forecast.keys.elementAt(index);
            return _itemCaroussel(key, forecast[key]!);
          }),
    );
  }

  Widget _itemCaroussel(Day day, Weather forecast) {
    return Container(
      padding: EdgeInsets.all(UI.defaultPadding),
      width: _forecastItemWidth,
      decoration: Decorations.box,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              day.getDayOfTheWeek(),
              style: const TextStyle(
                  fontSize: UI.textS, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: UI.defaultPadding),
          Text(forecast.title,
              style: const TextStyle(
                  fontSize: UI.textXS, fontWeight: FontWeight.bold)),
          Text(forecast.description,
              style: const TextStyle(fontSize: UI.textXS)),
          const SizedBox(height: UI.defaultPadding),
          Text(
            '${forecast.temp} °C',
            style: const TextStyle(
                fontSize: UI.textXS, fontWeight: FontWeight.bold),
          ),
          Text(
            '${Strings.weatherMin} : ${forecast.tempMin} °C',
            style: const TextStyle(fontSize: UI.textXS),
          ),
          Text(
            '${Strings.weatherMax} : ${forecast.tempMax} °C',
            style: const TextStyle(fontSize: UI.textXS),
          ),
          const SizedBox(height: UI.defaultPadding),
          Text(
            '${Strings.weatherWind} : ${forecast.gust} m/s',
            style: const TextStyle(fontSize: UI.textXS),
          ),
          Text(
            '${Strings.weatherHumidity} : ${forecast.humidity}%',
            style: const TextStyle(fontSize: UI.textXS),
          ),
        ],
      ),
    );
  }

  Widget _changeCityButton() {
    return MainButtonWidget(
      message: Strings.changeCity,
      onPressed: () async {
        _homeWeatherNotifier.getCurrentWeatherAndForecast(const City(
            name: 'London', country: 'UK', latitude: 43.4, longitude: 43.4));
      },
    );
  }
}
