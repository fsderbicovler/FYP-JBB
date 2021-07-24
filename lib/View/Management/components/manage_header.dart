import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class ManageHeader extends StatelessWidget {
  ManageHeader({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Management Deposits",
            style: TextStyle(
              fontSize: 20.0,
              color: darkgreen,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Iconbotton(
          //   svgsrc: "assets/icons/Camera Icon.svg",
          //   press: () => Navigator.pushNamed(context, ProfileScreen.routeName),
          // ),
        ],
      ),
    );
  }
}
