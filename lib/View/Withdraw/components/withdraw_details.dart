import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class WithdrawDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150, //adjust height
      margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topCenter,
            colors: [lightorange, whiteorange]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(style: TextStyle(color: primarycolour), children: [
            TextSpan(
              text: "Are you aready earning?\n\n",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "earning start from Rp. 50.000 ,- \n",
              style: TextStyle(fontSize: 20, decoration: TextDecoration.none),
            ),
            TextSpan(
              text: "processing credits within 3 days work days!\n",
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none),
            ),
          ]))
        ],
      ),
    );
  }
}
