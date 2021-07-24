import 'package:flutter/material.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/View/Management/manage_screen.dart';
import 'package:jbb/View/Profile/profile_screen.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.dashboard_rounded,
                  color: primarycolour,
                ),
                iconSize: 30,
                onPressed: () =>
                    Navigator.pushNamed(context, ManagementScreen.routeName),
              ),
              IconButton(
                icon: Icon(Icons.eco_rounded),
                iconSize: 40,
                color: darkgreen,
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),

              // IconButton(
              //   icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
              //   onPressed: () {},
              // ),
              IconButton(
                icon: Icon(
                  Icons.face,
                  color: primarycolour,
                ),
                iconSize: 35,
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}
