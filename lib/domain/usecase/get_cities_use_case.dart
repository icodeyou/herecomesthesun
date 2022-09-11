import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/repository/city_repository.dart';

class GetCitiesUseCase {
  final CityRepository _cityRepository;

  GetCitiesUseCase(CityRepository cityRepository)
      : _cityRepository = cityRepository;

  Future<List<City>> execute() {
    return _cityRepository.getCities();
  }
}
