import 'package:flutter/material.dart';

import 'package:jbb/constants.dart';

class DepositPlastictype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(style: TextStyle(color: primarycolour), children: [
            TextSpan(
              text: "Plastic types\n",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            TextSpan(
              text: "Please choose plastic type\n",
              style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none),
            ),
          ])),
          Plastictype(plastictype: "PTE or PETE", plasticcost: 0),
          Plastictype(plastictype: "PVC", plasticcost: 10.0),
          Plastictype(plastictype: "PP ", plasticcost: null),
        ],
      ),
    );
  }
}

class Plastictype extends StatefulWidget {
  String plastictype;
  double plasticcost;
  Plastictype({
    Key key,
    @required this.plastictype,
    @required this.plasticcost,
  }) : super(key: key);
  @override
  _PlastictypeState createState() => _PlastictypeState();
}

class _PlastictypeState extends State<Plastictype> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: 0, groupValue: null, onChanged: null),
        Text(
          widget.plastictype,
          style: TextStyle(fontSize: 13, color: primarycolour),
        )
      ],
    );
  }
}
