import 'package:flutter/material.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/constants.dart';

class BankCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 420, //adjust height
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(style: TextStyle(color: primarycolour), children: [
            TextSpan(
              text: "Withdrawal\n",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            TextSpan(
              text: "Please fill up the supporting details \n",
              style: TextStyle(fontSize: 15, decoration: TextDecoration.none),
            ),
            TextSpan(
              text: "processing credits within 3 days work days!\n",
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none),
            ),
          ])),
          SizedBox(
            height: 5,
          ),
          TextFormField(
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.attach_money_rounded,
                    color: darkgreen,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                hintText: "withdraw nominal",
                hintStyle: TextStyle(
                    color: darkgreen,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: darkgreen)),
              )),
          TextFormField(
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.assignment_rounded,
                    color: darkgreen,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                hintText: "account number",
                hintStyle: TextStyle(
                    color: darkgreen,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
                fillColor: lightblue,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: darkgreen)),
              )),
          TextFormField(
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.attach_money_rounded, color: darkgreen),
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                hintText: "phone number",
                hintStyle: TextStyle(
                    color: darkgreen,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: darkgreen)),
              )),
          FlatButton(
              padding: EdgeInsets.all(20),
              minWidth: 70,
              height: 10,
              color: lightorange,
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Submit",
                    style: TextStyle(color: darkgreen),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primarycolour,
                    size: 13,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
