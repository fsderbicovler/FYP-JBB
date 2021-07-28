import 'package:dio/dio.dart';
import 'package:jbb/Model/locationdeposit.dart';

class LocationApi {
  final _loc =
      new Dio(BaseOptions(baseUrl: 'http://localhost:8081/jbb/locationlist'));

  Future<List<LocationDeposit>> getlocation() async {
    final response = await _loc.get('');
    return (response.data['locationdeposit'] as List)
        .map<LocationDeposit>((json) => LocationDeposit.fromJson(json))
        .toList();
  }
}
