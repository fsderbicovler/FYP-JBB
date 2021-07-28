import 'package:dio/dio.dart';
import 'package:jbb/Model/plasticdeposit.dart';

class DepositApi {
  final _dio =
      new Dio(BaseOptions(baseUrl: 'http://localhost:8081/jbb/plasticdeposit'));

  //GET
  Future<List<Plasticdeposit>> getdeposit() async {
    final response = await _dio.get('');
    return (response.data['plasticdeposit'] as List)
        .map<Plasticdeposit>((json) => Plasticdeposit.fromJson(json))
        .toList();
  }

  //POST
  Future<Plasticdeposit> addDeposit(
      String dep_id, String location, String plastic, int quantity) async {
    final response = await _dio.post('', data: {
      'dep_id': dep_id,
      'location': location,
      'plastic': plastic,
      'quantity': quantity
    });
    return Plasticdeposit.fromJson(response.data);
  }

  // DELETE
  // Future deleteMalls(String id) async {
  //   final response = await _dio.delete('/$id');
  //   return response.data;
  // }
}
