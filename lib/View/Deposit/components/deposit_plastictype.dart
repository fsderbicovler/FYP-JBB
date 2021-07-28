import 'package:flutter/material.dart';

import 'package:jbb/constants.dart';

class DepositPlastictype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
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
          Plastictype(),
          // Plastictype(plastictype: "PVC", plasticcost: 10.0),
          // Plastictype(plastictype: "PP ", plasticcost: null),
        ],
      ),
    );
  }
}

class Plastictype extends StatefulWidget {
  String valuechoose;
  @override
  _PlastictypeState createState() => _PlastictypeState();
}

class _PlastictypeState extends State<Plastictype> {
  String valuechoose;
  double each;

  List listitem = ["PP", "PET", "HDPE"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
          hint: Text(
            "Select plastic types",
            style: TextStyle(
                color: darkgreen, fontStyle: FontStyle.italic, fontSize: 13),
          ),
          dropdownColor: whiteorange,
          icon: Icon(
            Icons.label_important_rounded,
            color: darkgreen,
          ),
          isExpanded: true,
          style: TextStyle(color: primarycolour, fontSize: 15),
          value: valuechoose,
          onChanged: (newvalue) {
            setState(() {
              valuechoose = newvalue;
              if (valuechoose == "PP") {
                each = 0.1;
              } else if (valuechoose == "PET") {
                each = 0.2;
              } else {
                each = 0.3;
              }
            });
          },
          items: listitem.map((valueitem) {
            return DropdownMenuItem(
              value: valueitem,
              child: Text(
                valueitem,
                style: TextStyle(color: darkgreen),
              ),
            );
          }).toList()),
    );
  }
}
