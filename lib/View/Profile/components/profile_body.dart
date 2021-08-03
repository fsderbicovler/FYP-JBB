import 'package:flutter/material.dart';
import 'package:jbb/Controller/profileapi.dart';
import 'package:jbb/Model/profile.dart';
import 'package:jbb/Model/users.dart';
import 'package:jbb/View/Login/jbb_login.dart';
import 'package:jbb/View/Profile/components/profile_menu.dart';
import 'package:jbb/View/Profile/components/profile_mini.dart';
import 'package:jbb/View/Profile/components/profile_pict.dart';
import 'package:jbb/View/Profile/components/profle_header.dart';
import 'package:jbb/constants.dart';

class ProfileBody extends StatefulWidget {
  ProfileApi profileapi = ProfileApi();
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  Profile profile = new Profile('', '', '', '', 0);

  @override
  void initState() {
    super.initState();
    widget.profileapi.getprofile(user).then((data) {
      setState(() {
        profile = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            // ProfileHeader(),
            SizedBox(
              height: 20,
            ),
            // ProfilePict(),
            SizedBox(
              height: 10,
            ),
            ProfileMini(
              pr: profile,
            ),
            SizedBox(
              height: 5,
            ),
            // ProfileMenu(
            //   text: "Change Personal Data",
            //   icon: Icon(
            //     Icons.edit_rounded,
            //     color: darkgreen,
            //   ),
            //   press: () {},
            // ),
            SizedBox(
              height: 5,
            ),
            // ProfileMenu(
            //   text: "User Feedback & Report ",
            //   icon: Icon(
            //     Icons.emoji_people_rounded,
            //     color: darkgreen,
            //   ),
            //   press: () {},
            // ),
            SizedBox(
              height: 5,
            ),
            ProfileMenu(
              text: "Log out profile",
              icon: Icon(
                Icons.ac_unit,
                color: redblood,
              ),
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
          ],
        ));
  }
}
