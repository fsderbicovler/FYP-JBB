import 'package:flutter/material.dart';
import 'package:jbb/Controller/depositapi.dart';
import 'package:jbb/Model/plasticdeposit.dart';
import 'package:jbb/View/Management/components/manage_list.dart';

class ManageBody extends StatefulWidget {
  final DepositApi api = DepositApi();
  @override
  _ManageBodyState createState() => _ManageBodyState();
}

class _ManageBodyState extends State<ManageBody> {
  List<Plasticdeposit> pd = [];

  @override
  void initState() {
    super.initState();
    widget.api.getdeposit().then((data) {
      setState(() {
        pd = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: ManageList(
          plasticdeposit: pd,
        ));
  }
}
