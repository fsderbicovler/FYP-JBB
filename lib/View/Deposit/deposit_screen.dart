import 'package:flutter/material.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Deposit/components/deposit_body.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class DepositScreen extends StatelessWidget {
  static String routeName = "/depositscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DepositBody(),
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
            "Deposit Now!",
            style: TextStyle(
                color: primarycolour,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          // Text(
          //   "${collectorlist.length} Collector(s)",
          //   style: TextStyle(
          //     color: HexColor("#c85320"),
          //     fontSize: 11,
          //   ),
        ],
      ),
    );
  }
}
