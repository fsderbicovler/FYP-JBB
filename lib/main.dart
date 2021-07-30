import 'package:flutter/material.dart';
import 'package:jbb/Admin/adminhome.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/View/Login/jbb_login.dart';

import 'package:jbb/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Jakata Bottle Bank',
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    // initialRoute: LoginScreen.routeName,
    home: AdminHome(),
    routes: routes,
  ));
}
