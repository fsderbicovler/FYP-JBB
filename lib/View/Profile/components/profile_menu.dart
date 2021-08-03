import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: whiteorange,
          onPressed: press,
          child: Row(
            children: [
              icon,
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(color: redblood, fontSize: 15),
              )),
              Icon(
                Icons.arrow_forward_ios,
                color: redblood,
              ),
            ],
          )),
    );
  }
}
