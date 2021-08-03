import 'package:flutter/material.dart';
import 'package:jbb/Admin/admindeposit.dart';
import 'package:jbb/Admin/adminwithdraw.dart';
import 'package:jbb/View/Login/jbb_login.dart';
import 'package:jbb/constants.dart';

class AdminHome extends StatelessWidget {
  static String routeName = "/adminhome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: withdrawheader(context),
      backgroundColor: Colors.white,
      body: AdminBody(),
    );
  }
}

AppBar withdrawheader(BuildContext context) {
  return AppBar(
    backgroundColor: lightblue,
    automaticallyImplyLeading: false,
    actions: [
      IconButton(
          icon: Icon(
            Icons.logout,
            color: Colors.red,
            size: 30,
          ),
          onPressed: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          })
    ],
    title: Column(
      children: [
        Text(
          "JBB Administration",
          style: TextStyle(
              color: primarycolour, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

class AdminBody extends StatefulWidget {
  @override
  _AdminBodyState createState() => _AdminBodyState();
}

class _AdminBodyState extends State<AdminBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(TextSpan(
                style: TextStyle(
                  color: primarycolour,
                ),
                children: [
                  TextSpan(
                    text: "Administration application\n",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "supporting the Jakarta Bottle Bank \n",
                    style: TextStyle(
                        fontSize: 18, decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text:
                        "for managing all processing style in Jakarta bottle bank\n",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ])),
            AdminMenu(
              menu: "Manage Deposit",
              icon: Icon(
                Icons.departure_board_rounded,
                size: 28,
                color: darkgreen,
              ),
              press: () => Navigator.pushNamed(context, AdminDeposit.routeName),
            ),
            SizedBox(height: 10),
            AdminMenu(
              menu: "Withdrawal Management",
              icon: Icon(
                Icons.widgets_rounded,
                size: 28,
                color: darkgreen,
              ),
              press: () =>
                  Navigator.pushNamed(context, AdminWithdraw.routeName),
            ),

            SizedBox(
              height: 10,
            ),
            // AdminMenu(
            //   menu: "Add /Remove Location",
            //   icon: Icon(
            //     Icons.add_alert_outlined,
            //     size: 28,
            //     color: darkgreen,
            //   ),
            //   press: null,
            // ),
            // AdminMenu(menu: "User Management", icon: null),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class AdminMenu extends StatelessWidget {
  final String menu;
  final Icon icon;
  final VoidCallback press;

  AdminMenu({
    Key key,
    @required this.menu,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: FlatButton(
          padding: EdgeInsets.all(25),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: whiteorange,
          onPressed: press,
          child: Row(
            children: [
              icon,
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                menu,
                style: TextStyle(color: darkgreen, fontSize: 18),
              )),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: darkgreen,
              ),
            ],
          )),
    );
  }
}
