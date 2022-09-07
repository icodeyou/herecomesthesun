import 'package:herecomesthesun/data/service/api.dart';
import 'package:herecomesthesun/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final Api _api;
  RepositoryImpl(Api api) : _api = api;

  void n() {
    String ok = "3";
    print(ok);
  }
}
