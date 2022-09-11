import 'package:herecomesthesun/domain/model/city.dart';

abstract class CityRepository {
  Future<List<City>> getCities();
}
