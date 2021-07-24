import 'package:flutter/material.dart';

import 'package:jbb/Model/users_data.dart';
import 'package:jbb/constants.dart';

class HomeBanner extends StatelessWidget {
  UserData userlist;

  HomeBanner({
    Key key,
    @required this.userlist,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150, //adjust height
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: primarycolour),
          children: [
            TextSpan(
                text: "Welcome Back, \n\n", style: TextStyle(fontSize: 18)),
            TextSpan(
              text: "${userlist.user_name} \n",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "Personal collector\n",
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            TextSpan(
              text: "\nAvailable credit: Rp. ${userlist.user_credit} ,-",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
