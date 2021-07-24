import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class WithdrawDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120, //adjust height
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(style: TextStyle(color: primarycolour), children: [
            TextSpan(
              text: "Are you aready earning?\n",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
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
