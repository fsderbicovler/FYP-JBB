import 'package:flutter/material.dart';
import 'package:jbb/View/Deposit/components/deposit_location.dart';
import 'package:jbb/View/Deposit/components/deposit_plastictype.dart';
import 'package:jbb/View/Deposit/components/deposit_submit.dart';
import 'package:jbb/View/Deposit/components/deposit_weight.dart';

class DepositBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 2,
                ),
                DepositLocation(),
                SizedBox(
                  height: 5,
                ),
                DepositWeight(),
                SizedBox(
                  height: 5,
                ),
                DepositPlastictype(),
                DepositSubmit(),
              ],
            )));
  }
}
