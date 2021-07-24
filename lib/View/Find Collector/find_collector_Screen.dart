import 'package:flutter/material.dart';
import 'package:jbb/Model/collector_location.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

import 'components/collector_list_body.dart';

class FindCollector extends StatelessWidget {
  static String routeName = "/findcollector";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CollectorListBody(),
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
            "Deposit Location",
            style: TextStyle(
                color: primarycolour,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "${locationlist.length} Location(s)",
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
