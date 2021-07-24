import 'package:flutter/material.dart';
import 'package:jbb/View/Withdraw/components/withdraw_check.dart';
import 'package:jbb/View/Withdraw/components/withdraw_details.dart';
import 'package:jbb/View/Withdraw/components/withdraw_menu.dart';
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
              bank: "DANA",
              icon: Icon(
                Icons.contact_page_rounded,
                color: darkgreen,
              ),
              press: () =>
                  Navigator.pushNamed(context, WithdrawCheck.routeName),
            ),
            WithdrawMenu(
              bank: "GrabPay",
              icon: Icon(
                Icons.motorcycle_rounded,
                color: darkgreen,
              ),
              press: () =>
                  Navigator.pushNamed(context, WithdrawCheck.routeName),
            ),
            WithdrawMenu(
              bank: "GoPay",
              icon: Icon(
                Icons.home_repair_service_outlined,
                color: darkgreen,
              ),
              press: () =>
                  Navigator.pushNamed(context, WithdrawCheck.routeName),
            )
          ],
        ),
      ),
    );
  }
}
