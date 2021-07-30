import 'package:flutter/material.dart';
import 'package:jbb/Controller/profileapi.dart';
import 'package:jbb/Controller/userapi.dart';
import 'package:jbb/Model/profile.dart';
import 'package:jbb/Model/users.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/View/Login/jbb_login.dart';
import 'package:jbb/View/Registrations/components/persona_address.dart';
import 'package:jbb/View/Registrations/components/personal_contact.dart';
import 'package:jbb/View/Registrations/components/personal_info.dart';
import 'package:jbb/constants.dart';

class RegistrationBody extends StatefulWidget {
  final UserApi userapi = UserApi();
  final ProfileApi profileapi = ProfileApi();
  @override
  _RegistrationBodyState createState() => _RegistrationBodyState();
}

class _RegistrationBodyState extends State<RegistrationBody> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _pnumber = TextEditingController();
  final TextEditingController _address = TextEditingController();

  List<Profile> profilelist = [];
  List<Users> userlist = [];

  void _adduser() async {
    final username = _username.text;
    final password = _password.text;
    final type = 1;

    final adduser = await widget.userapi.adduser(username, password, type);
    setState(() {
      userlist.add(adduser);
    });
  }

  void _addprofile() async {
    final username = _username.text;
    final phonenumber = _pnumber.text;
    final fullname = _fullname.text;
    final address = _address.text;
    final credit = 0.0;

    final addprofile = await widget.profileapi
        .addprofile(username, phonenumber, fullname, address, credit);
    setState(() {
      profilelist.add(addprofile);
    });
  }

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
            Container(
              width: double.infinity,
              height: 450, //adjust height
              margin: EdgeInsets.only(top: 10, right: 15, left: 15),
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              decoration: BoxDecoration(
                color: whiteorange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal Account",
                    style: TextStyle(
                        fontSize: 20,
                        color: primarycolour,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "please fill for login purpose",
                    style: TextStyle(
                        fontSize: 14,
                        color: primarycolour,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _username,
                    style: TextStyle(color: primarycolour),
                    decoration: InputDecoration(
                      filled: false,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: darkgreen,
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: primarycolour)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _password,
                    style: TextStyle(color: primarycolour),
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        (Icons.remove_red_eye_rounded),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: darkgreen,
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: primarycolour)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Personal Contact",
                    style: TextStyle(
                        fontSize: 20,
                        color: primarycolour,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Complete your correct information",
                      style: TextStyle(
                        fontSize: 15,
                        color: primarycolour,
                        fontStyle: FontStyle.italic,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _fullname,
                    style: TextStyle(color: primarycolour),
                    decoration: InputDecoration(
                      filled: false,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: "Fullname",
                      hintStyle: TextStyle(
                          color: darkgreen,
                          fontSize: 17.0,
                          fontStyle: FontStyle.italic),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.orange)),
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  TextField(
                    controller: _pnumber,
                    style: TextStyle(color: primarycolour),
                    decoration: InputDecoration(
                      filled: false,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(
                          color: darkgreen,
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.orange)),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextFormField(
                    controller: _address,
                    style: TextStyle(color: primarycolour),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      hintText: "Address (incl. area & poscode)",
                      hintStyle: TextStyle(
                          color: darkgreen,
                          fontSize: 13.0,
                          fontStyle: FontStyle.italic),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: primarycolour)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              color: primarycolour,
              child: MaterialButton(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                minWidth: 200.0,
                // height: 10,
                child: Text(
                  "Register now",
                  textAlign: TextAlign.center, //text will be at the centre
                  style: TextStyle(color: whiteorange, fontSize: 16.0),
                ),
                onPressed: () {
                  _addprofile();
                  _adduser();

                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
