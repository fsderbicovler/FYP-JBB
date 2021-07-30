import 'package:flutter/material.dart';
import 'package:jbb/Controller/withdrawapi.dart';
import 'package:jbb/Model/withdrawal.dart';
import 'package:jbb/View/Withdraw/components/withdraw_body.dart';
import 'package:jbb/View/Withdraw/components/withdraw_screen.dart';
import 'package:jbb/constants.dart';

class BankCheckout extends StatefulWidget {
  WithdrawApi wapi = WithdrawApi();
  @override
  _BankCheckoutState createState() => _BankCheckoutState();
}

class _BankCheckoutState extends State<BankCheckout> {
  int nominal;
  List<Withdrawal> wlist = [];

  final TextEditingController _phonenumb = TextEditingController();
  final TextEditingController _paymenttype = TextEditingController();
  final TextEditingController _account = TextEditingController();
  final TextEditingController _nominal = TextEditingController();

  void _withdraw() async {
    final username = "farhansd";
    final phonenumb = _phonenumb.text;
    final payment = _paymenttype.text;
    final account = _account.text;
    final status = "processing";
    final nominal = int.parse(_nominal.text);

    final withdraw = await widget.wapi
        .withdraw(username, phonenumb, payment, account, status, nominal);
    setState(() {
      wlist.add(withdraw);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 520, //adjust height
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
          // TextFormField(
          //     controller: _username,
          //     style: TextStyle(color: primarycolour),
          //     decoration: InputDecoration(
          //       suffixIcon: IconButton(
          //         icon: Icon(
          //           Icons.account_box_rounded,
          //           color: darkgreen,
          //         ),
          //         onPressed: () {
          //           setState(() {
          //             _username.text = "farhansd";
          //           });
          //         },
          //       ),
          //       contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          //       hintText: "username",
          //       labelText: "username",
          //       hintStyle: TextStyle(
          //           color: darkgreen,
          //           fontSize: 16.0,
          //           fontStyle: FontStyle.italic),
          //       border: OutlineInputBorder(
          //           borderSide: BorderSide(color: darkgreen)),
          //     )),
          // SizedBox(
          //   height: 10,
          // ),
          TextFormField(
              controller: _phonenumb,
              style: TextStyle(color: primarycolour),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.phone_android_outlined,
                  color: darkgreen,
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                hintText: "phone number",
                labelText: "phone number",
                labelStyle: inputstyle,
                hintStyle: inputstyle,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: darkgreen)),
              )),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: _paymenttype,
              style: TextStyle(color: primarycolour),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.account_box_outlined,
                  color: darkgreen,
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                hintText: "Grab/ GoPay/ Dana",
                labelText: "withdraw account",
                hintStyle: TextStyle(
                    color: darkgreen,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: darkgreen)),
              )),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: _account,
              style: TextStyle(color: primarycolour),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.assignment_rounded,
                  color: darkgreen,
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                hintText: "1xxx xxxx xxx",
                labelText: "Account number",
                labelStyle: inputstyle,
                hintStyle: TextStyle(
                    color: darkgreen,
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic),
                fillColor: lightblue,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: darkgreen)),
              )),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              controller: _nominal,
              style: TextStyle(color: primarycolour),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.attach_money_rounded, color: darkgreen),
                contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                hintText: "Rp. 50 000 (mininmum)",
                labelText: "Nominal",
                labelStyle: inputstyle,
                hintStyle: TextStyle(
                    color: darkgreen,
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: darkgreen)),
              )),

          SizedBox(
            height: 10,
          ),
          Text(
            "Your credits is Rp. 100.000",
            textAlign: TextAlign.center, //text will be at the centre
            style: TextStyle(
                color: primarycolour,
                fontSize: 14.0,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "Refresh for confirmation",
            textAlign: TextAlign.center, //text will be at the centre
            style: TextStyle(
                color: primarycolour,
                fontSize: 15.0,
                fontStyle: FontStyle.italic),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.refresh_rounded,
                    color: primarycolour,
                  ),
                  onPressed: () {
                    setState(() {
                      nominal = int.parse(_nominal.text);
                    });
                  }),
              Text(
                "Withdrawal Rp.${_nominal.text} Transfered to ${_paymenttype.text}",
                style: TextStyle(
                    color: darkgreen,
                    fontSize: 14,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(5.0),
            color: primarycolour,
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              minWidth: 100.0,
              // height: 10,
              child: Text(
                "Withdraw now",
                textAlign: TextAlign.center, //text will be at the centre
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {
                nominal = int.parse(_nominal.text);
                _withdraw();
                Navigator.pushNamed(context, WithdrawScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
