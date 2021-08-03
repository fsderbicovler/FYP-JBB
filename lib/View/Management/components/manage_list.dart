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
            .map<Widget>((plasticdeposit) => Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [whiteorange, lightorange])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deposit ! Plastic ${plasticdeposit.plastic} ",
                        style: TextStyle(
                            color: darkgreen,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Deposit at ${plasticdeposit.location}",
                        style: TextStyle(color: darkgreen, fontSize: 17),
                      ),
                      Text(
                        "You've earned ${plasticdeposit.quantity} grams (Rp. ${plasticdeposit.credit}) ",
                        style: TextStyle(
                          color: darkgreen,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Deposit is ${plasticdeposit.status} ...",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                        ),
                      ),
                      FlatButton(
                        onPressed: null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.delete_sharp,
                              color: redblood,
                            ),
                            Text(
                              "Delete deposit",
                              style: TextStyle(color: redblood, fontSize: 15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
            .toList(),
      ],
    );
  }
}
