import 'package:flutter/material.dart';
import 'package:jbb/constants.dart';

class DepositWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200, //adjust height
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: whiteorange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(color: primarycolour),
              children: [
                TextSpan(
                  text: "Weight deposit\n",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                TextSpan(
                  text: "Please enter the weight of plastic bottle\n",
                  style: TextStyle(
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          WeightInput(),
        ],
      ),
    );
  }
}

class WeightInput extends StatefulWidget {
  @override
  _WeightInputState createState() => _WeightInputState();
}

class _WeightInputState extends State<WeightInput> {
  int _weight;
  // double earning = 20;
  final TextEditingController weightinput = TextEditingController();

  @override
  void dispose() {
    weightinput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 83,
          width: 200,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              controller: weightinput,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: darkgreen,
                ),
                hintText: "Weight",
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text("grams ", style: TextStyle(fontSize: 18, color: darkgreen)),
        // Text(weighinput.text, style: TextStyle(fontSize: 18, color: darkgreen)),
      ],
    ));
  }
}
