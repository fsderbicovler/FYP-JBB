import 'package:flutter/material.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Home/components/home_body.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightblue,
      // appBar: HomeHeader(),
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
