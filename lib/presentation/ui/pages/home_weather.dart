import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/domain_module.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/presentation/controller/home_weather_controller.dart';
import 'package:herecomesthesun/presentation/states/home_weather_state.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_main_button.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_progress.dart';

final _homeCurrentWeatherController =
    StateNotifierProvider.autoDispose<HomeWeatherController, HomeWeatherState>(
        (ref) {
  var weatherUseCase = ref.watch(getWeatherUseCaseProvider);
  return HomeWeatherController(getCurrentWeatherUseCase: weatherUseCase);
});

class WeatherPage extends ConsumerStatefulWidget {
  const WeatherPage({super.key});

  @override
  ConsumerState createState() => _WeatherPageState();
}

class _WeatherPageState extends ConsumerState<WeatherPage> {
  late final HomeWeatherController _homeWeatherNotifier;

  @override
  void initState() {
    _homeWeatherNotifier = ref.read(_homeCurrentWeatherController.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(_homeCurrentWeatherController);

    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      body: Center(
        child: body(state),
      ),
    );
  }

  Widget body(HomeWeatherState state) {
    return state.maybeWhen(
      init: () => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(Strings.hello),
          MainButtonWidget(
            message: Strings.hello,
            onPressed: () async {
              _homeWeatherNotifier.getWeather(const City(
                  name: 'London',
                  Country: 'UK',
                  latitude: 43.4,
                  longitude: 43.4));
            },
          )
        ],
      ),
      currentWeatherLoaded: (weather) => Text(weather.toString()),
      orElse: () => const ProgressWidget(),
    );
  }
}
