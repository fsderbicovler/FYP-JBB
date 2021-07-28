import 'package:flutter/material.dart';

import 'package:jbb/Model/plasticdeposit.dart';
import 'package:jbb/constants.dart';

class ManageList extends StatelessWidget {
  final List<Plasticdeposit> plasticdeposit;
  const ManageList({
    Key key,
    this.plasticdeposit,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...plasticdeposit
            .map<Widget>((plasticdeposit) => ListTile(
                  leading: Icon(
                    Icons.local_drink_rounded,
                    color: primarycolour,
                  ),
                  tileColor: lightblue,
                  title: Text(
                    "${plasticdeposit.dep_id}  ${plasticdeposit.plastic} ",
                    style: TextStyle(color: darkgreen, fontSize: 18),
                  ),
                  subtitle: Text(
                    "deposited at ${plasticdeposit.location} ${plasticdeposit.quantity} grams",
                    style: TextStyle(color: darkgreen, fontSize: 14),
                  ),
                ))
            .toList(),
      ],
    );
  }
}
