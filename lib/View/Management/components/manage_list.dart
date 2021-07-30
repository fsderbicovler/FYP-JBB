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
            .map<Widget>((plasticdeposit) => Card(
                  child: ListTile(
                    // trailing: IconButton(
                    //   icon: Icon(
                    //     Icons.delete_forever_rounded,
                    //     color: Colors.redAccent,
                    //     size: 25,
                    //   ),
                    //   onPressed: () {},
                    // ),
                    tileColor: whiteorange,
                    title: Text(
                      "Plastic ${plasticdeposit.plastic} earns Rp. ${plasticdeposit.credit}",
                      style: TextStyle(color: darkgreen, fontSize: 16),
                    ),
                    subtitle: Text(
                      "[${plasticdeposit.status}]${plasticdeposit.quantity}grams deposited at ${plasticdeposit.location} ",
                      style: TextStyle(
                          color: darkgreen,
                          fontSize: 14,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ))
            .toList(),
      ],
    );
  }
}
