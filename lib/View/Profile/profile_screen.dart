import 'package:flutter/material.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Profile/components/profile_body.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightblue,
      // appBar: AppBar(
      //   title: Text("Profile"),
      // ),
      body: ProfileBody(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
