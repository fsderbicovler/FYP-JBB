import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:jbb/View/Withdraw/components/withdraw_check.dart';
import 'package:jbb/View/Withdraw/components/withdraw_details.dart';
import 'package:jbb/View/Withdraw/components/withdraw_menu.dart';
import 'package:jbb/View/Withdraw/components/withdrawhistory.dart';
import 'package:jbb/constants.dart';

class WithdrawBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            WithdrawDetails(),
            SizedBox(
              height: 10,
            ),
            WithdrawMenu(
              bank: "Withdrawal process",
              icon: Icon(
                Icons.contact_page_rounded,
                color: darkgreen,
              ),
              press: () =>
                  Navigator.pushNamed(context, WithdrawCheck.routeName),
            ),
            WithdrawMenu(
              bank: "Withdrawal history",
              icon: Icon(
                Icons.history_rounded,
                color: darkgreen,
              ),
              press: () =>
                  Navigator.pushNamed(context, WithdrawHistory.routeName),
            ),
            SizedBox(
              height: 40,
            ),
            // Expanded(
            //     child: ListView(
            //   children: [
            //     ListTile(
            //       title: Text("Withdrawal 1"),
            //       tileColor: whiteorange,
            //     )
            //   ],
            // ))
          ],
        ),
      ),
    );
  }
}
