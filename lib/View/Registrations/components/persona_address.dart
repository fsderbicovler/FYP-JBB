import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class PersonalAddress extends StatelessWidget {
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
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Personal Address",
            style: TextStyle(
              fontSize: 20,
              color: primarycolour,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(color: primarycolour),
            decoration: InputDecoration(
                filled: false,
                contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                hintText: "Full Address",
                hintStyle: TextStyle(
                  color: darkgreen,
                  fontSize: 14.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: primarycolour),
                )),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            style: TextStyle(color: lightblue),
            decoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Additional address ",
              hintStyle: TextStyle(
                color: darkgreen,
                fontSize: 12.0,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.orange)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(color: primarycolour),
            decoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintText: "Postcode",
              hintStyle: TextStyle(
                color: darkgreen,
                fontSize: 15.0,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.orange)),
            ),
          ),
        ],
      ),
    );
  }
}
