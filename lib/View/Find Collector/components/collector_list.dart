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
      children: [
        SizedBox(
          height: 10,
        ),
        ...locationlist.map<Widget>((locationlist) => Container(
            height: 150,
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.only(left: 30, top: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [lightorange, whiteorange]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: "${locationlist.col_id} ${locationlist.building} \n",
                style: TextStyle(
                    fontSize: 20,
                    color: darkgreen,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "${locationlist.address}\n",
                style: TextStyle(
                    fontSize: 16,
                    color: darkgreen,
                    fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: "available in ${locationlist.area} \n",
                style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: blackblack),
              ),
            ])))),
      ],
    );
  }
}
