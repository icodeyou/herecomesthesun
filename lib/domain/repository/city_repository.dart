import '../model/city.dart';

abstract class CityRepository {
  Future<List<City>> getCities();
}
