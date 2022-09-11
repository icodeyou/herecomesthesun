import 'package:herecomesthesun/data/service/city_database.dart';
import 'package:herecomesthesun/domain/model/city.dart';
import 'package:herecomesthesun/domain/repository/city_repository.dart';

class CityRepositoryImpl implements CityRepository {
  final CityDatabase _cityDatabase;
  CityRepositoryImpl(CityDatabase cityDatabase) : _cityDatabase = cityDatabase;

  @override
  Future<List<City>> getCities() {
    return _cityDatabase.getCities();
  }
}
