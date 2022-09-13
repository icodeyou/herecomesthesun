import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:herecomesthesun/domain/domain_module.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/usecase/get_cities_use_case.dart';
import 'package:herecomesthesun/presentation/controller/change_city_controller.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/pages/home_weather.dart';
import 'package:herecomesthesun/presentation/ui/styles/constants.dart';
import 'package:herecomesthesun/presentation/ui/utils/print.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_error_details.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_progress.dart';

final changeCityProvider = StateNotifierProvider.autoDispose<
    ChangeCityController, AsyncValue<List<City>>>((ref) {
  GetCitiesUseCase getCitiesUseCase = ref.watch(getCitiesUseCaseProvider);
  return ChangeCityController(getCitiesUseCase);
});

class ChangeCityPage extends ConsumerWidget {
  const ChangeCityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text(Strings.titleChangeCityPage)),
      body: Padding(
        padding: const EdgeInsets.all(UI.defaultPadding),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              onChanged: (value) {
                ref.read(changeCityProvider.notifier).filterCities(value);
              },
            ),
            Expanded(
              child: _results(ref),
            ),
          ],
        ),
      ),
    );
  }

  Widget _results(WidgetRef ref) {
    return ref.watch(changeCityProvider).when(
        data: (cities) {
          //return Text(cities.toString());
          return ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) =>
                const Divider(thickness: 1, color: Colors.grey),
            itemCount: cities.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () async {
                  ref
                      .read(homeCurrentWeatherController.notifier)
                      .getCurrentWeatherAndForecast(cities[i]);
                  GoRouter.of(context).pop();
                },
                child: ListTile(
                    title: Text('${cities[i].name}, ${cities[i].country}')),
              );
            },
          );
        },
        error: (error, _) {
          Print.error(error.toString());
          return ErrorDetailsWidget(
              errorDebugMessage: Strings.errorLoadingCities,
              retryCallback: () async =>
                  ref.read(changeCityProvider.notifier).getCities());
        },
        loading: () => const ProgressWidget());
  }
}
