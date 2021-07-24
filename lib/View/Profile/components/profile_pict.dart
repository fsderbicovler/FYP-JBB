import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class ProfilePict extends StatelessWidget {
  const ProfilePict({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
          ),
          Positioned(
              right: -5,
              bottom: 0,
              child: SizedBox(
                height: 36,
                width: 36,
                child: FlatButton(
                  child: Icon(Icons.ac_unit),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: lightorange,
                  onPressed: () {},
                ),
              ))
        ],
      ),
    );
  }
}
