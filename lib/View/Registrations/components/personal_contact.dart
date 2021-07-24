import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class PersonalContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250, //adjust height
      margin: EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Contact",
            style: TextStyle(
                fontSize: 22,
                color: primarycolour,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(color: Colors.orange),
            decoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Email",
              hintStyle: TextStyle(
                color: darkgreen,
                fontSize: 14.0,
              ),
              fillColor: primarycolour,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.orange)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            style: TextStyle(color: Colors.orange),
            decoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Phone Number",
              hintStyle: TextStyle(
                color: darkgreen,
                fontSize: 14.0,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.orange)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(color: Colors.orange),
            decoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Password",
              hintStyle: TextStyle(
                color: darkgreen,
                fontSize: 14.0,
              ),
              fillColor: primarycolour,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: primarycolour)),
            ),
          ),
        ],
      ),
    );
  }
}
