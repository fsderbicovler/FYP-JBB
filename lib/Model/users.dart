import 'package:flutter/material.dart';

class Users {
  String id;
  final String username;
  final String password;
  final int type;

  Users(this.username, this.password, this.type);

  Users._(this.id, this.username, this.password, this.type);

  factory Users.fromJson(Map json) {
    final id = json['_id'];
    return Users._(id, json['username'], json['password'], json['type']);
  }
}
