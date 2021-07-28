import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class WeightInput extends StatefulWidget {
  @override
  _WeightInputState createState() => _WeightInputState();
}

class _WeightInputState extends State<WeightInput> {
  // int _weight;
  // double earning = 20;
  final TextEditingController weighinput = TextEditingController();

  @override
  void dispose() {
    weighinput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // IconButton(
        //   icon: Icon(
        //     Icons.remove_circle,
        //     color: primarycolour,
        //   ),
        //   onPressed: () {
        //     setState(() {
        //       _weight--;
        //     });
        //   },
        // ),
        SizedBox(
          height: 83,
          width: 200,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              // _weight.toString().padLeft(2, '0'),
              // textAlign: TextAlign.center,
              // style: TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: darkgreen,
                ),
                hintText: "Weight",
              ),
              // onChanged: (newweight) {
              //   setState(() {
              //     _weight = newweight as int;
              //   });
              // },
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text("grams", style: TextStyle(fontSize: 18, color: darkgreen)),
        // Text(weighinput.text, style: TextStyle(fontSize: 18, color: darkgreen)),
        // IconButton(
        //   icon: Icon(
        //     Icons.add_circle,
        //     color: primarycolour,
        //   ),
        //   onPressed: () {
        //     setState(() {
        //       _weight++;
        //     });
        //   },
        // ),

        // Text("earn $earning")
        // // Spacer(),
        // // Image.asset('assets/images/bookmark.png'),
      ],
    ));
  }
}
