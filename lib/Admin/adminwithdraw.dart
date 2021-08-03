import 'package:flutter/material.dart';
import 'package:jbb/Controller/withdrawapi.dart';
import 'package:jbb/Model/withdrawal.dart';
import 'package:jbb/constants.dart';

class AdminWithdraw extends StatelessWidget {
  static String routeName = "/adminwithdraw";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminappbar(context),
      backgroundColor: Colors.white,
      body: AdminWithdrawBody(),
      // bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

AppBar adminappbar(BuildContext context) {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: lightblue,
    title: Column(
      children: [
        Text(
          "Withdraw Creadits",
          style: TextStyle(
              color: primarycolour, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "Please check all withdrawal",
          style: TextStyle(
            color: primarycolour,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}

class AdminWithdrawBody extends StatefulWidget {
  final WithdrawApi wapi = WithdrawApi();
  @override
  _AdminWithdrawBodyState createState() => _AdminWithdrawBodyState();
}

class _AdminWithdrawBodyState extends State<AdminWithdrawBody> {
  List<Withdrawal> wlist = [];

  @override
  void initState() {
    super.initState();
    widget.wapi.getwitdhraw().then((data) {
      setState(() {
        wlist = data;
      });
    });
  }

  void _updatew() async {
    final username = "farhansd";
    final phonenumb = "011111111";
    final payment = "Ovo";
    final account = "119277721";
    final status = "Done";
    final nominal = 2000;

    final update = await widget.wapi
        .updatewithdraw(username, phonenumb, payment, account, status, nominal);
    setState(() {
      wlist.add(update);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: AdminWList(
          withdrawal: wlist,
          updatew: _updatew,
        ));
  }
}

class AdminWList extends StatelessWidget {
  final List<Withdrawal> withdrawal;
  final Function updatew;
  const AdminWList({Key key, this.withdrawal, this.updatew}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...withdrawal
            .map<Widget>((withdrawal) => Container(
                padding: EdgeInsets.only(top: 20, left: 25, right: 20),
                height: 170,
                width: double.infinity,
                margin: EdgeInsets.only(top: 20, left: 10, right: 5),
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
                        "Withdrawal ${withdrawal.payment}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "No account\t:\t${withdrawal.account} (${withdrawal.username}",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Nominal : Rp. ${withdrawal.nominal}  ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "withdrawal is ${withdrawal.status} ... ",
                        style: TextStyle(color: Colors.red, fontSize: 17),
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
                            onPressed: null,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.cancel_rounded,
                              color: Colors.red,
                              size: 35,
                            ),
                            onPressed: null,
                          ),
                        ],
                      )
                    ])))
            .toList(),
      ],
    );
  }
}
