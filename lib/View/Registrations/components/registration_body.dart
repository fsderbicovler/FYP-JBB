import 'package:flutter/material.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/View/Login/jbb_login.dart';
import 'package:jbb/View/Registrations/components/persona_address.dart';
import 'package:jbb/View/Registrations/components/personal_contact.dart';
import 'package:jbb/View/Registrations/components/personal_info.dart';
import 'package:jbb/constants.dart';

class RegistrationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Register your personal detail below",
                style: TextStyle(
                    fontSize: 17,
                    color: primarycolour,
                    fontStyle: FontStyle.italic),
              ),
            ),
            PersonalInfo(),
            PersonalContact(),
            PersonalAddress(),
            Material(
                elevation: 2.0,
                color: primarycolour,
                child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  minWidth: 80.0,
                  height: 30,
                  child: Text(
                    "Register",
                    textAlign: TextAlign.center, //text will be at the centre
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
