import 'package:flutter/material.dart';
import 'package:jbb/Model/plastic_data.dart';
import 'package:jbb/Model/plastic_deposit.dart';
import 'package:jbb/View/Management/components/manage_list.dart';

class ManageBody extends StatefulWidget {
  @override
  _ManageBodyState createState() => _ManageBodyState();
}

class _ManageBodyState extends State<ManageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ListView.builder(
        itemCount: plasticlist.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ManageList(
            plasticdeposit: plasticdeposit[index],
          ),
        ),
      ),
    );
  }
}
