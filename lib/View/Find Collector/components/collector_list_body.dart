import 'package:flutter/material.dart';
import 'package:jbb/Model/collector_location.dart';
import 'package:jbb/View/Find%20Collector/components/collector_list.dart';

class CollectorListBody extends StatefulWidget {
  @override
  _CollectorListBodyState createState() => _CollectorListBodyState();
}

class _CollectorListBodyState extends State<CollectorListBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        // mainAxisAlignment: MainAxisAlignment.start,
        // children: [
        //   SizedBox(
        //     height: 20,
        //   ),
        //   SearchField(),
        //   SizedBox(
        //     height: 10,
        //   ),
        //   CollectorList(
        //     locationlist: locationlist[3],
        //   ),
        //   CollectorList(
        //     locationlist: locationlist[2],
        //   ),
        //   CollectorList(
        //     locationlist: locationlist[2],
        //   ),
        //   CollectorList(
        //     locationlist: locationlist[2],
        //   ),
        //   CollectorList(
        //     locationlist: locationlist[2],
        //   ),
        // ListView.builder(
        itemCount: locationlist.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CollectorList(locationlist: locationlist[index]),
        ),
        // )
        // ],
      ),
    );
  }
}
