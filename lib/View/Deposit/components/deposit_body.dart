import 'package:flutter/material.dart';
import 'package:jbb/View/Deposit/components/deposit_location.dart';
import 'package:jbb/View/Deposit/components/deposit_plastictype.dart';
import 'package:jbb/View/Deposit/components/deposit_weight.dart';
import 'package:jbb/View/Deposit/deposit_confirm.dart';
import 'package:jbb/constants.dart';

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
                // DepositSubmit(),
                DepositButtonn(),
              ],
            )));
  }
}

class DepositButtonn extends StatelessWidget {
  final WeightInput wi;
  DepositButtonn({this.wi});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(10.0),
      color: primarycolour,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        minWidth: 100.0,
        // height: 10,
        child: Text(
          "Deposit !",
          textAlign: TextAlign.center, //text will be at the centre
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        onPressed: () {
          Navigator.pushNamed(context, DepositConfirmScreen.routeName);
          final w = DepositButtonn(
            wi: wi,
          );
          // Navigator.push(context, MaterialPageRoute(builder: (context) => w));
        },
      ),
    );
  }
}
