import 'package:flutter/material.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/View/Registrations/registration_screen.dart';
import 'package:jbb/constants.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/loginscreen";
  @override
  Widget build(BuildContext context) {
    final emailfield = TextField(
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.access_alarm, color: darkgreen),
        ),
        filled: false,
        contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        // hintText: "Email Address",
        // hintStyle: TextStyle(color: Colors.orange),
        labelText: "Email Address",
        labelStyle: TextStyle(
            color: darkgreen, fontSize: 17.0, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );

    final passfield = TextField(
      obscureText: true,
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        filled: false,
        contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        labelText: "Password",
        labelStyle: TextStyle(
            color: primarycolour, fontSize: 18.0, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    );

    final loginbutton = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(3.0),
      color: primarycolour,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        minWidth: 100.0,
        child: Text(
          "L O G I N",
          textAlign: TextAlign.center, //text will be at the centre
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        onPressed: () {
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: lightblue,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "JAKARTA BOTTLE BANK",
                  style: TextStyle(
                    color: primarycolour,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'Schyler'
                  ),
                ),
                Text(
                  "Ready for Recyle??",
                  style: TextStyle(
                    color: primarycolour,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    // fontFamily: 'Schyler'
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                emailfield,
                SizedBox(
                  height: 25.0,
                ),
                passfield,
                SizedBox(
                  height: 30.0,
                ),
                loginbutton,
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Get ready for recycling ?",
                  style: TextStyle(
                    color: primarycolour,
                    fontSize: 15.0,
                    // fontFamily: 'Schyler'
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Join us now!",
                    style: TextStyle(color: primarycolour),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RpersonalScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
