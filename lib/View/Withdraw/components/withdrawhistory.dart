import 'package:flutter/material.dart';
import 'package:jbb/Controller/withdrawapi.dart';
import 'package:jbb/Model/withdrawal.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class WithdrawHistory extends StatelessWidget {
  static String routeName = "/withdrawhistory";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: WithdrawHBody(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.manage,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: lightblue,
      title: Column(
        children: [
          Text(
            "Withdrawal History",
            style: TextStyle(
                color: primarycolour,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            " pppp",
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

class WithdrawHBody extends StatefulWidget {
  final WithdrawApi wapi = WithdrawApi();
  @override
  _WithdrawHBodyState createState() => _WithdrawHBodyState();
}

class _WithdrawHBodyState extends State<WithdrawHBody> {
  List<Withdrawal> withdrawlist = [];

  @override
  void initState() {
    super.initState();
    widget.wapi.getwitdhraw().then((data) {
      setState(() {
        withdrawlist = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: HistoryList(
          withdrawal: withdrawlist,
        ));
  }
}

class HistoryList extends StatelessWidget {
  final List<Withdrawal> withdrawal;
  const HistoryList({
    Key key,
    this.withdrawal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...withdrawal
            .map<Widget>((withdrawal) => Container(
                  padding: EdgeInsets.all(20),
                  height: 180,
                  margin: EdgeInsets.only(top: 20, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(5)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                          colors: [lightorange, whiteorange])),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Withdrawal ${withdrawal.payment}\t(${withdrawal.account})",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Nominal : Rp. ${withdrawal.nominal}  ",
                          style: TextStyle(fontSize: 19),
                        ),
                        Text(
                          "withdrawal is ${withdrawal.status} ... ",
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        ),
                        FlatButton(
                          onPressed: null,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.delete_sharp,
                                color: redblood,
                                size: 25,
                              ),
                              // Text(
                              //   "Delete request",
                              //   style:
                              //       TextStyle(color: whiteorange, fontSize: 15),
                              // ),
                            ],
                          ),
                        )
                      ]),
                ))
            .toList(),
      ],
    );
  }
}
