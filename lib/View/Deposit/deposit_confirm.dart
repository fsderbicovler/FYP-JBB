import 'package:flutter/material.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Deposit/components/deposit_submit.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class DepositConfirmScreen extends StatelessWidget {
  static String routeName = "/depositconfirm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DepositSubmit(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: lightblue,
      title: Column(
        children: [
          Text(
            "Confirm your Deposit",
            style: TextStyle(
                color: primarycolour,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
