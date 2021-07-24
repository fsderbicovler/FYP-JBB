import 'package:flutter/material.dart';
import 'package:jbb/Model/users_data.dart';
import 'package:jbb/View/Login/jbb_login.dart';
import 'package:jbb/View/Profile/components/profile_menu.dart';
import 'package:jbb/View/Profile/components/profile_mini.dart';
import 'package:jbb/View/Profile/components/profile_pict.dart';
import 'package:jbb/View/Profile/components/profle_header.dart';
import 'package:jbb/constants.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ProfileHeader(),
            SizedBox(
              height: 20,
            ),
            ProfilePict(),
            SizedBox(
              height: 10,
            ),
            ProfileMini(userlist: userlist[1]),
            SizedBox(
              height: 5,
            ),
            ProfileMenu(
              text: "Change Personal Data",
              icon: Icon(
                Icons.edit_rounded,
                color: darkgreen,
              ),
              press: () {},
            ),
            SizedBox(
              height: 5,
            ),
            ProfileMenu(
              text: "User Feedback & Report ",
              icon: Icon(
                Icons.emoji_people_rounded,
                color: darkgreen,
              ),
              press: () {},
            ),
            SizedBox(
              height: 5,
            ),
            ProfileMenu(
              text: "Log out profile",
              icon: Icon(
                Icons.ac_unit,
                color: darkgreen,
              ),
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
          ],
        ));
  }
}
