import 'package:flutter/material.dart';

class UserData {
  String user_id, user_name, address, user_email;
  double user_credit;
  String joined_date;

  UserData({
    @required this.user_id,
    @required this.user_name,
    @required this.user_email,
    @required this.address,
    @required this.user_credit,
    @required this.joined_date,
  });

  UserData.fromJson(Map<String, dynamic> json)
      : this(
          user_id: json['user_id'],
          user_name: json['user_name'],
          user_email: json['user_email'],
          address: json['address'],
          user_credit: json['user_credit'],
          joined_date: json['joined_date'],
        );
}

List<UserData> userlist = [
  UserData(
      user_id: "PC0001",
      user_name: "Syharul Gunawan",
      user_email: "syahrul@gmail.com",
      address:
          "Jl. Pakubuwono VI No.68, Gunung, Kebayoran Baru, South Jakarta,12120, Indonesia",
      user_credit: 100.5,
      joined_date: "03/09/2020"),
  UserData(
      user_id: "PC0002",
      user_name: "Farhan Shadiq",
      user_email: "aminah_nissa@yahoo.com",
      address:
          "Jl. Asia Afrika No.19,  Gelora, Kec. Tanah Abang, Jakarta Pusat, 10270, Indonesia",
      user_credit: 1200.5,
      joined_date: "20/10/2015"),
  UserData(
      user_id: "C00003",
      user_name: "Massitah",
      user_email: "Massitah110921@yahoo.com",
      address: "Karawaci indah, Tangerang,Banten",
      user_credit: 23000,
      joined_date: "08/02/2019"),
];
