import 'package:flutter/material.dart';
import 'package:jbb/Model/collector_location.dart';
import 'package:jbb/constants.dart';

class CollectorList extends StatelessWidget {
  // final CollectorData collectorlist;
  // const CollectorList({
  //   Key key,
  //   @required this.collectorlist,
  // }) : super(key: key);

  final CollectorLoc locationlist;
  const CollectorList({
    Key key,
    @required this.locationlist,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: lightorange,
        borderRadius: BorderRadius.circular(10),
      ),
      child:
          Text.rich(TextSpan(style: TextStyle(color: primarycolour), children: [
        TextSpan(
          text: "${locationlist.col_id}\n",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextSpan(
          text: "${locationlist.building}\n",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        TextSpan(
          text: "${locationlist.address}\n",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        TextSpan(
          text: "available in ${locationlist.area} \n",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        TextSpan(
          text: "close to ${locationlist.distance} km\n",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ])),
    );
  }
}
