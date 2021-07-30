import 'package:flutter/material.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Withdraw/components/withdraw_body.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class WithdrawScreen extends StatelessWidget {
  static String routeName = "/withdraw";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: withdrawheader(context),
      backgroundColor: lightblue,
      body: WithdrawBody(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

AppBar withdrawheader(BuildContext context) {
  return AppBar(
    backgroundColor: lightblue,
    title: Column(
      children: [
        Text(
          "Withdraw Creadits",
          style: TextStyle(
              color: primarycolour, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        // Text(
        //   "available 10000 credits",
        //   style: TextStyle(
        //     color: primarycolour,
        //     fontSize: 13,
        //   ),
        // ),
      ],
    ),
  );
}
