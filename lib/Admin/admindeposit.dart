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
                .map<Widget>((plasticdeposit) => Card(
                      child: ListTile(
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete_forever_rounded,
                            color: Colors.redAccent,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
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
        ));
  }
}
