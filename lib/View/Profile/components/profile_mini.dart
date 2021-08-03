import 'package:flutter/material.dart';
import 'package:jbb/Model/profile.dart';
import 'package:jbb/Model/users.dart';
import 'package:jbb/constants.dart';

class ProfileMini extends StatelessWidget {
  Profile pr;

  ProfileMini({Key key, this.pr}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: whiteorange,
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [lightblue, lightorange])),
      child: Text.rich(TextSpan(
          style: TextStyle(
            color: darkgreen,
          ),
          children: [
            TextSpan(
              text: "${pr.fullname}\n",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
                text: "Personal Collector\n",
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                )),
            TextSpan(
                text: "${pr.phonenumber}\n\n",
                style: TextStyle(
                  fontSize: 16,
                  // fontStyle: FontStyle.italic,
                )),
            TextSpan(
                text: "${pr.addresss} \n\n",
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                )),
            TextSpan(
              text: "Credits \t Rp. ${pr.credit}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ])),
    );
  }
}
