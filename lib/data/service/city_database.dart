import '../../domain/model/city.dart';

class CityDatabase {
  final List<City> _fakeCities = const [
    City(name: 'Silverstone', country: 'UK', latitude: 52.07, longitude: 1.02),
    City(
        name: 'São Paulo',
        country: 'Brazil',
        latitude: 23.56,
        longitude: 46.64),
    City(
        name: 'Melbourne',
        country: 'Australia',
        latitude: 37.81,
        longitude: 144.96),
    City(
        name: 'Monte Carlo',
        country: 'Monaco',
        latitude: 43.74,
        longitude: 7.43),
  ];

  Future<List<City>> getCities() async {
    // Uncomment following line to test error from database
    //throw Exception("ERROR GET");

    return await Future.delayed(const Duration(seconds: 1))
        .then((_) => _fakeCities);
  }
}
