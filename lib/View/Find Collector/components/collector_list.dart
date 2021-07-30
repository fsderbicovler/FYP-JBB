import 'package:flutter/material.dart';
import 'package:jbb/Model/locationdeposit.dart';
import 'package:jbb/constants.dart';

class CollectorList extends StatelessWidget {
  final List<LocationDeposit> locationlist;
  const CollectorList({
    Key key,
    @required this.locationlist,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      // itemCount: locationlist.length,
      // itemBuilder: (context, index) => Column(
      // width: double.minPositive,
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      // decoration: BoxDecoration(
      //     color: lightblue, borderRadius: BorderRadius.circular(10)),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        ...locationlist.map<Widget>((locationlist) => Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                color: whiteorange, borderRadius: BorderRadius.circular(10)),
            child: Text.rich(
                TextSpan(style: TextStyle(color: darkgreen), children: [
              TextSpan(
                  text: "${locationlist.col_id} ${locationlist.building} \n",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextSpan(
                text: "${locationlist.address}\n",
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: "available in ${locationlist.area} \n",
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
              ),
            ])))),
      ],
    );
  }
}
