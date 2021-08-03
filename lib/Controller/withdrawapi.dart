import 'package:dio/dio.dart';
import 'package:jbb/Model/withdrawal.dart';

class WithdrawApi {
  final _withd =
      new Dio(BaseOptions(baseUrl: 'http://localhost:8081/jbb/withdrawal'));

  Future<Withdrawal> withdraw(String username, String phonenumb, String payment,
      String account, String status, int nominal) async {
    final response = await _withd.post('', data: {
      'username': username,
      'phonenumb': phonenumb,
      'payment': payment,
      'account': account,
      'status': status,
      'nominal': nominal
    });
    return Withdrawal.fromJson(response.data);
  }

  Future<List<Withdrawal>> getwitdhraw() async {
    final response = await _withd.get('');
    return (response.data['withdrawal'] as List)
        .map<Withdrawal>((json) => Withdrawal.fromJson(json))
        .toList();
  }

  Future<Withdrawal> updatewithdraw(String username, String phonenumb,
      String payment, String account, String status, int nominal) async {
    final response = await _withd.put('/$username', data: {
      'username': username,
      'phonenumb': phonenumb,
      'payment': payment,
      'account': account,
      'status': status,
      'nominal': nominal
    });
    return Withdrawal.fromJson(response.data);
  }
}
