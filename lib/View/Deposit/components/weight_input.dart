import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class WeightInput extends StatefulWidget {
  String quantity;
  WeightInput({Key key, @required this.quantity}) : super(key: key);
  @override
  _WeightInputState createState() => _WeightInputState();
}

class _WeightInputState extends State<WeightInput> {
  int _weight = 0;
  // double earning = 20;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.remove_circle,
            color: primarycolour,
          ),
          onPressed: () {
            setState(() {
              _weight--;
            });
          },
        ),
        SizedBox(
          height: 43,
          width: 50,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: primarycolour,
              ),
            ),
            child: Text(
              _weight.toString().padLeft(2, '0'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(widget.quantity.toString(), style: TextStyle(fontSize: 18)),
        IconButton(
          icon: Icon(
            Icons.add_circle,
            color: primarycolour,
          ),
          onPressed: () {
            setState(() {
              _weight++;
            });
          },
        ),

        // Text("earn $earning")
        // // Spacer(),
        // // Image.asset('assets/images/bookmark.png'),
      ],
    ));
  }
}
