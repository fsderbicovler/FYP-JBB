import 'package:flutter/material.dart';
import 'package:jbb/Controller/profileapi.dart';
import 'package:jbb/Model/profile.dart';
import 'package:jbb/constants.dart';

class HomeBanner extends StatefulWidget {
  final ProfileApi profileapi = ProfileApi();

  @override
  _HomeBannerState createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  Profile profile;

  // @override
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
    return Container(
      width: double.infinity,
      height: 180, //adjust height
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: primarycolour),
          children: [
            TextSpan(
                text: "Welcome Back, \n\n", style: TextStyle(fontSize: 18)),
            TextSpan(
              text: "${profile.fullname} (${profile.username})\n",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "Personal collector\n",
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            TextSpan(
              text: "\nAvailable credit\t\t Rp. ${profile.credit} ,-",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
