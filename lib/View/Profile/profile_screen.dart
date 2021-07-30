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
      appBar: profileheader(context),
      body: ProfileBody(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

AppBar profileheader(BuildContext context) {
  return AppBar(
    backgroundColor: lightblue,
    automaticallyImplyLeading: false,
    // actions: <Widget>[
    //   IconButton(icon: const Icon(Icons.logout), onPressed: null)
    // ],
    title: Column(
      children: [
        Text(
          "Profile ",
          style: TextStyle(
              color: primarycolour, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          "Personal collector",
          style: TextStyle(
            color: primarycolour,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}
