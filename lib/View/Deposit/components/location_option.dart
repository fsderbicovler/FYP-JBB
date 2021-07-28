import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:jbb/Controller/locationapi.dart';
import 'package:jbb/Model/locationdeposit.dart';
import 'package:jbb/constants.dart';

class LocationOption extends StatefulWidget {
  @override
  _LocationOptionState createState() => _LocationOptionState();
}

class _LocationOptionState extends State<LocationOption> {
  String valuechoose;

  List listitem = ["MAll A", "Mall B", "Mall C", "Mall D"];

  void getvalue() {
    return getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
          hint: Text(
            "Find your nearest location",
            style: TextStyle(
                color: darkgreen, fontStyle: FontStyle.italic, fontSize: 13),
          ),
          dropdownColor: whiteorange,
          icon: Icon(
            Icons.location_on_rounded,
            color: darkgreen,
          ),
          isExpanded: true,
          style: TextStyle(color: primarycolour, fontSize: 15),
          value: valuechoose,
          onChanged: (newvalue) {
            setState(() {
              valuechoose = newvalue;
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
