import 'package:flutter/material.dart';
import 'package:jbb/Controller/depositapi.dart';
import 'package:jbb/Model/plasticdeposit.dart';
import 'package:jbb/constants.dart';

class AdminDeposit extends StatelessWidget {
  static String routeName = "/admindeposit";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: AdminDepositBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: lightblue,
      title: Column(
        children: [
          Text(
            "Deposit Management",
            style: TextStyle(
                color: primarycolour,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "please check the deposits",
            style: TextStyle(
              color: primarycolour,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

class AdminDepositBody extends StatefulWidget {
  final DepositApi dapi = DepositApi();
  @override
  _AdminDepositBodyState createState() => _AdminDepositBodyState();
}

class _AdminDepositBodyState extends State<AdminDepositBody> {
  List<Plasticdeposit> pdlist = [];
  @override
  void initState() {
    super.initState();
    widget.dapi.getdeposit().then((data) {
      setState(() {
        pdlist = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: ListView(
          children: [
            ...pdlist
                .map<Widget>((plasticdeposit) => Container(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      margin: EdgeInsets.only(top: 20),
                      height: 160,
                      width: double.infinity,
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
                              "Deposit plastic type : ${plasticdeposit.plastic}",
                              style: TextStyle(color: darkgreen, fontSize: 18),
                            ),
                            Text(
                              "Weight : ${plasticdeposit.quantity} grams (Rp. ${plasticdeposit.credit}) ",
                              style: TextStyle(
                                  color: darkgreen,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              "Deposit location : ${plasticdeposit.location}",
                              style: TextStyle(color: darkgreen, fontSize: 18),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.check_circle_sharp,
                                    color: Colors.green,
                                    size: 35,
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.cancel_rounded,
                                    color: Colors.red,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                              ],
                            )
                          ]),
                    ))
                .toList(),
          ],
        ));
  }
}
