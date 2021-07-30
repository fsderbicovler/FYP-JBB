import 'package:flutter/material.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Withdraw/components/bankcheckout.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class WithdrawCheck extends StatelessWidget {
  static String routeName = "/bankcheckout";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: checkoutheader(context),
      body: BankCheckout(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

AppBar checkoutheader(BuildContext context) {
  return AppBar(
    backgroundColor: lightblue,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Withdrawal Confirmation",
          style: TextStyle(
              color: primarycolour, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
