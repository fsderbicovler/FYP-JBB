import 'package:flutter/material.dart';
import 'package:jbb/View/Deposit/components/location_option.dart';
import 'package:jbb/constants.dart';

class DepositLocation extends StatelessWidget {
  const DepositLocation({
    Key key,
  }) : super(key: key);

  // List listlocation = ["Mall PIK", "Mall Pondok Indah", "Mall Citra gran"];
  // final dropdownloc = DropdownButton(items: null, onChanged: null);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180, //adjust height
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
          Text.rich(
            TextSpan(
              style: TextStyle(color: primarycolour),
              children: [
                TextSpan(
                  text: "Find Location\n",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "Please choose the nearest location\n",
                  style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          LocationOption(),
        ],
      ),
    );
  }
}
