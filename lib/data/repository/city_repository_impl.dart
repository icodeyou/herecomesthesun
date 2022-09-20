import '../../domain/model/city.dart';
import '../../domain/repository/city_repository.dart';
import '../service/city_database.dart';

class CityRepositoryImpl implements CityRepository {
  final CityDatabase _cityDatabase;
  CityRepositoryImpl(CityDatabase cityDatabase) : _cityDatabase = cityDatabase;

  @override
  Future<List<City>> getCities() {
    return _cityDatabase.getCities();
  }
}
