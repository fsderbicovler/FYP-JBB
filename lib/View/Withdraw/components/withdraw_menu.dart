import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class WithdrawMenu extends StatelessWidget {
  final String bank;
  final Icon icon;
  final VoidCallback press;

  WithdrawMenu({
    Key key,
    @required this.bank,
    @required this.icon,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: FlatButton(
          padding: EdgeInsets.all(15),
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
                bank,
                style: TextStyle(color: darkgreen, fontSize: 18),
              )),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: darkgreen,
              ),
            ],
          )),
    );
  }
}
