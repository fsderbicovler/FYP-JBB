import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class AdminWithdraw extends StatelessWidget {
  static String routeName = "/adminwithdraw";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminappbar(context),
      backgroundColor: lightblue,
      // body: WithdrawBody(),
      // bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

AppBar adminappbar(BuildContext context) {
  return AppBar(
    backgroundColor: lightblue,
    title: Column(
      children: [
        Text(
          "Withdraw Creadits",
          style: TextStyle(
              color: primarycolour, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "Please check all withdrawal",
          style: TextStyle(
            color: primarycolour,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}
