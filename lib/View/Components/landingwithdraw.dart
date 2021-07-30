import 'package:flutter/material.dart';
import 'package:jbb/View/Withdraw/components/withdraw_screen.dart';
import 'package:jbb/constants.dart';

class LandingWithdraw extends StatelessWidget {
  static String routeName = '/landingwithdraw';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        color: lightblue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 80,
              backgroundColor: lightorange,
              child: Icon(
                Icons.check_circle,
                size: 130,
                color: darkgreen,
              )),
          SizedBox(
            height: 20,
          ),
          Material(
              color: lightblue,
              child: Text.rich(
                  TextSpan(style: TextStyle(color: primarycolour), children: [
                TextSpan(
                  text: "Withdrawal is processing\n",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "processing will take within 3 working days",
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ]))),
          SizedBox(
            height: 60,
          ),
          Material(
            // color: lightblue,
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, WithdrawScreen.routeName);
              },
              child: Text(
                "check your progress",
                style: TextStyle(color: primarycolour),
              ),
              color: whiteorange,
            ),
          )
        ],
      ),
    ));
  }
}
