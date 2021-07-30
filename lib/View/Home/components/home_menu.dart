import 'package:flutter/material.dart';
import 'package:jbb/View/Depositt/depositscreen.dart';
import 'package:jbb/View/Find%20Collector/find_collector_Screen.dart';
import 'package:jbb/View/Withdraw/components/withdraw_check.dart';
import 'package:jbb/View/Withdraw/components/withdraw_screen.dart';
import 'package:jbb/constants.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> menus = [
    //   // {"icon": "assets/icons/Flash Icon.svg", "text": "Find Collector"},
    //   {
    //     "icon": "assets/icons/Discover.svg",
    //     "text": "Find Collector",
    //     "navigate": "Navigator.pushNamed(context, HomeScreen.routeName)"
    //   },
    //   {"icon": "assets/icons/Bill Icon.svg", "text": "Deposit Now!"},
    //   {"icon": "assets/icons/Gift Icon.svg", "text": "Withdrawal"},
    //   // {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    // ];
    return Padding(
        padding: EdgeInsets.all(20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuCard(
                  icon: Icon(
                    Icons.add_location_rounded,
                    color: primarycolour,
                    size: 40,
                  ),
                  text: "Find Collector",
                  press: () {
                    Navigator.pushNamed(context, FindCollector.routeName);
                  }),
              MenuCard(
                  icon: Icon(
                    Icons.control_point_duplicate_rounded,
                    color: primarycolour,
                    size: 45,
                  ),
                  text: "Deposit Now!",
                  press: () {
                    Navigator.pushNamed(context, DepositScreenn.routeName);
                  }),
              MenuCard(
                  icon: Icon(
                    Icons.attach_money_rounded,
                    color: primarycolour,
                    size: 40,
                  ),
                  text: "Witdrawal",
                  press: () {
                    Navigator.pushNamed(context, WithdrawScreen.routeName);
                  }),
            ])

        // List.generate(
        //     menus.length,
        //     (index) => MenuCard(
        //         icon: menus[index]["icon"],
        //         text: menus[index]["text"],
        //         press: () {})),
        );
  }
}

class MenuCard extends StatelessWidget {
  final String text;
  final Icon icon;
  final GestureTapCallback press; //LEARN WHAT'S THIS

  const MenuCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Learn what;s this
      onTap: press,
      child: SizedBox(
        width: 100,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(3),
              ),
              child: icon,
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: darkgreen),
            ),
          ],
        ),
      ),
    );
  }
}
