import 'package:dio/dio.dart';
import 'package:jbb/Model/users.dart';

class UserApi {
  final _user =
      new Dio(BaseOptions(baseUrl: 'http://localhost:8081/jbb/users'));
  Users use;

  Future<Users> getuser(String username) async {
    final response = await _user.get('/$username');
    return Users.fromJson(response.data['profile']);
  }

  Future<Users> adduser(String username, String password, int type) async {
    final response = await _user.post('', data: {
      'username': username,
      'password': password,
      'type': type,
    });
  }
}
