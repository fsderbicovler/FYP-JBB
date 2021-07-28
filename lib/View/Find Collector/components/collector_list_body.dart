import 'package:flutter/material.dart';
import 'package:jbb/Controller/locationapi.dart';
import 'package:jbb/Model/locationdeposit.dart';
import 'package:jbb/View/Find%20Collector/components/collector_list.dart';

class CollectorListBody extends StatefulWidget {
  final LocationApi api = LocationApi();
  @override
  _CollectorListBodyState createState() => _CollectorListBodyState();
}

class _CollectorListBodyState extends State<CollectorListBody> {
  List<LocationDeposit> ld = [];

  @override
  void initState() {
    super.initState();
    widget.api.getlocation().then((data) {
      setState(() {
        ld = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: CollectorList(locationlist: ld),
    );
  }
}
