import '../model/city.dart';
import '../repository/city_repository.dart';

class GetCitiesUseCase {
  final CityRepository _cityRepository;

  GetCitiesUseCase(CityRepository cityRepository)
      : _cityRepository = cityRepository;

  Future<List<City>> execute() {
    return _cityRepository.getCities();
  }
}
