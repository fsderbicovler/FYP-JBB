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
            .map<Widget>((withdrawal) => Card(
                  child: ListTile(
                    tileColor: whiteorange,
                    title: Text(
                      "${withdrawal.payment}, Rp. ${withdrawal.nominal} ",
                      style: TextStyle(color: darkgreen, fontSize: 16),
                    ),
                    subtitle: Text(
                      "acc. number: (${withdrawal.account}) is ${withdrawal.status} ",
                      style: TextStyle(color: darkgreen, fontSize: 15),
                    ),
                  ),
                ))
            .toList(),
      ],
    );
  }
}
