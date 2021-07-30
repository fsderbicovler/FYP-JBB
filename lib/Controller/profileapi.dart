import 'package:dio/dio.dart';
import 'package:jbb/Model/profile.dart';

class ProfileApi {
  final _profile =
      new Dio(BaseOptions(baseUrl: 'http://localhost:8081/jbb/profiles'));

  Future<Profile> addprofile(String _username, String _phonenumber,
      String _fullname, String _address, double _credit) async {
    final response = await _profile.post('', data: {
      'username': _username,
      'phonenumb': _phonenumber,
      'fullname': _fullname,
      'address': _address,
      'credit': _credit
    });
  }

  Future<Profile> getprofile(String username) async {
    final response = await _profile.get('/$username');
    return Profile.fromJson(response.data['profile']);
  }
}
