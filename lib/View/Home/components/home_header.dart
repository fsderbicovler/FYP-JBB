import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "JAKARTA BOTTLE BANK",
            style: TextStyle(
              fontSize: 25.0,
              color: primarycolour,
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
