import 'package:flutter/material.dart';
import 'package:jbb/View/Registrations/components/registration_body.dart';
import 'package:jbb/constants.dart';

class RpersonalScreen extends StatefulWidget {
  static String routeName = "/registration";
  @override
  _RpersonalScreenState createState() => _RpersonalScreenState();
}

class _RpersonalScreenState extends State<RpersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: RegistrationBody(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: lightblue,
    title: Column(
      children: [
        Text(
          "Join us in Recycling",
          style: TextStyle(
              color: primarycolour, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
