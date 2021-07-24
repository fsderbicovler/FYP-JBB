import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200, //adjust height
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Details",
            style: TextStyle(
                fontSize: 23,
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
              hintText: "Fullname",
              hintStyle: TextStyle(
                color: darkgreen,
                fontSize: 14.0,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: primarycolour)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(color: Colors.orange),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "IC Number",
              hintStyle: TextStyle(
                color: darkgreen,
                fontSize: 13.0,
              ),
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
