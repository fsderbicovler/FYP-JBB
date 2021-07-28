import 'package:flutter/material.dart';
import 'package:jbb/View/Deposit/components/deposit_body.dart';
import 'package:jbb/View/Deposit/components/deposit_weight.dart';
import 'package:jbb/constants.dart';

class DepositSubmit extends StatefulWidget {
  @override
  _DepositSubmitState createState() => _DepositSubmitState();
}

class _DepositSubmitState extends State<DepositSubmit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200, //adjust height
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(color: primarycolour),
              children: [
                TextSpan(
                  text: "Total plastic you earn\n",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "plastic type : {pt.valuechoose}\n",
                  style: TextStyle(
                      fontSize: 14,
                      // fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "weight {widget.dbn.wi} \n",
                  style:
                      TextStyle(fontSize: 14, decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "[Price per kg ] x [weight] \n",
                  style:
                      TextStyle(fontSize: 15, decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "Total plastic earning is ",
                  style:
                      TextStyle(fontSize: 16, decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "Rp. 10,000 \n",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          DepositButton(),
        ],
      ),
    );
  }
}

class DepositButton extends StatelessWidget {
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
          "Deposit Now",
          textAlign: TextAlign.center, //text will be at the centre
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, DepositScreen.routeName);
        },
      ),
    );
  }
}
