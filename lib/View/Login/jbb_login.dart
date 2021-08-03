import 'package:flutter/material.dart';
import 'package:jbb/Admin/adminhome.dart';
import 'package:jbb/Controller/userapi.dart';
import 'package:jbb/Model/users.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/View/Registrations/registration_screen.dart';
import 'package:jbb/constants.dart';

class LoginScreen extends StatefulWidget {
  final UserApi api = UserApi();
  static String routeName = "/loginscreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Users users = new Users('', '', 0);
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // final _formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void initstate() {
    super.initState();
    widget.api.getuser(_email.text).then((data) {
      setState(() {
        users = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final emailfield = Form(
        child: TextFormField(
      controller: _email,
      validator: (value) {
        if (value.isNotEmpty && value.length > 3) {
          return null;
        } else if (value.isNotEmpty && value.length <= 3) {
          return 'Too short';
        } else {
          return 'please enter';
        }
      },
      style: TextStyle(
        color: blackblack,
      ),
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.email_rounded, color: darkgreen),
        filled: false,
        contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        labelText: "Email Address",
        labelStyle: TextStyle(
            color: darkgreen, fontSize: 17.0, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.orange)),
      ),
    ));

    final passfield = TextFormField(
      controller: _password,
      obscureText: true,
      style: TextStyle(color: blackblack),
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.lock_rounded,
          color: darkgreen,
        ),
        contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 20),
        labelText: "Password",
        labelStyle: TextStyle(
            color: darkgreen, fontSize: 18.0, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: darkgreen)),
      ),
    );

    final loginbutton = Material(
      borderRadius: BorderRadius.circular(5.0),
      color: primarycolour,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        minWidth: 200.0,
        // height: 10,
        child: Text(
          "Login !",
          textAlign: TextAlign.center, //text will be at the centre
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        onPressed: () {
          if (_email.text == user) {
            Navigator.pushNamed(context, HomeScreen.routeName);
          } else if (_email.text == admin) {
            Navigator.pushNamed(context, AdminHome.routeName);
          } else {
            Navigator.pushNamed(context, RpersonalScreen.routeName);
          }
          // _addDeposit();
          // showDialog(
          //     context: context,
          //     builder: (context) {
          //       return AlertDialog(
          //         content: Text(
          //             "INPUT ${_inputlocation.text} and ${_inputtype.text}  ${_inputqty.text} grams"),
          //       );
          //     });
          //
        },
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          // color: lightblue,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [darkgreen.withOpacity(0.4), lightorange])),
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
