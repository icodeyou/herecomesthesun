import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:herecomesthesun/domain/domain_module.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/usecase/get_cities_use_case.dart';
import 'package:herecomesthesun/presentation/controller/change_city_controller.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/styles/constants.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_error_details.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_progress.dart';

final _changeCityProvider = StateNotifierProvider.autoDispose<
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
      body: Column(
        children: [
          const TextField(),
          Padding(
            padding: const EdgeInsets.all(UI.defaultPadding),
            child: _results(ref),
          ),
        ],
      ),
    );
  }

  Widget _results(WidgetRef ref) {
    return ref.watch(_changeCityProvider).when(
        data: (cities) => Text(cities.toString()),
        error: (error, stacktrace) {
          return ErrorDetailsWidget(
              errorMessage: 'There has been an error loading the cities.',
              retryCallback: () async =>
                  ref.read(_changeCityProvider.notifier).getCities());
        },
        loading: () => const ProgressWidget());
  }
}
