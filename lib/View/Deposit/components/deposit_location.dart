import 'package:flutter/material.dart';
import 'package:jbb/Model/collector_location.dart';
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
      height: 300, //adjust height
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
                // TextSpan(
                //   text: "[DROPDOWN BOX]",
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontStyle: FontStyle.italic,
                //       decoration: TextDecoration.none),
                // ),
              ],
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.orange),
          //   ),
          //   child: ExpandablePanel(
          //       header: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Radio(value: 0, groupValue: null, onChanged: null),
          //           Text(
          //             "Location A",
          //             style: TextStyle(
          //                 fontSize: 12,
          //                 fontWeight: FontWeight.bold,
          //                 color: HexColor("c85320")),
          //           ),
          //         ],
          //       ),
          //       expanded: Text("detailed address")),
          // ),
          LocationOption(
            locationlist: locationlist[1],
          ),
          LocationOption(
            locationlist: locationlist[3],
          ),
          LocationOption(
            locationlist: locationlist[2],
          )
          // DropdownButton(items: null, onChanged: null)
        ],
      ),
    );
  }
}
