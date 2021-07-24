import 'package:flutter/material.dart';
import 'package:jbb/Model/plastic_deposit.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Management/components/manage_body.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class ManagementScreen extends StatelessWidget {
  static String routeName = "/manage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ManageBody(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.manage,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: lightblue,
      title: Column(
        children: [
          Text(
            "Deposit Management",
            style: TextStyle(
                color: primarycolour,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "${plasticdeposit.length} deposits",
            style: TextStyle(
              color: primarycolour,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
