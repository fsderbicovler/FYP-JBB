import 'package:flutter/material.dart';
import 'package:jbb/Controller/depositapi.dart';
import 'package:jbb/Model/plasticdeposit.dart';
import 'package:jbb/View/Components/bottomnavbar.dart';
import 'package:jbb/View/Management/manage_screen.dart';
import 'package:jbb/constants.dart';
import 'package:jbb/enums.dart';

class DepositScreenn extends StatelessWidget {
  static String routeName = "/depositscreenn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DepositBody(),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: lightblue,
    title: Column(
      children: [
        Text(
          "Deposit Now!",
          style: TextStyle(
              color: primarycolour, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

class DepositBody extends StatefulWidget {
  final DepositApi api = DepositApi();
  @override
  _DepositBodyState createState() => _DepositBodyState();
}

class _DepositBodyState extends State<DepositBody> {
  final TextEditingController _inputlocation = TextEditingController();
  final TextEditingController _inputtype = TextEditingController();
  final TextEditingController _inputqty = TextEditingController();

  List<Plasticdeposit> pd = [];

  void _addDeposit() async {
    final dep_id = "D000X";
    final loc = _inputlocation.text;
    final type = _inputtype.text;
    final qty = int.parse(_inputqty.text);

    final adddeposit = await widget.api.addDeposit(dep_id, loc, type, qty);
    setState(() {
      pd.add(adddeposit);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: whiteorange,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              margin: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2,
                  ),
                  // DepositLocation(),
                  Text(
                    "Find Location\n",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primarycolour),
                  ),
                  Text(
                    "Please choose the nearest location\n",
                    style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        color: primarycolour),
                  ),
                  TextFormField(
                    controller: _inputlocation,
                    decoration: const InputDecoration(
                      icon: const Icon(
                        Icons.location_city_rounded,
                        color: darkgreen,
                      ),
                      hintText: 'Enter location for deposit',
                      labelText: "Location",
                      focusColor: darkgreen,
                    ),
                  ),
                  TextFormField(
                    controller: _inputtype,
                    decoration: const InputDecoration(
                      icon: const Icon(
                        Icons.merge_type_rounded,
                        color: darkgreen,
                      ),
                      hintText: 'PP / HPDE /PVC',
                      labelText: "Plastic type",
                      focusColor: darkgreen,
                    ),
                  ),
                  TextFormField(
                    controller: _inputqty,
                    decoration: const InputDecoration(
                      icon: const Icon(
                        Icons.calculate_rounded,
                        color: darkgreen,
                      ),
                      hintText: 'grams ',
                      labelText: "Plastic weight (grams)",
                      focusColor: darkgreen,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: primarycolour,
                    child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      minWidth: 100.0,
                      // height: 10,
                      child: Text(
                        "Deposit Now",
                        textAlign:
                            TextAlign.center, //text will be at the centre
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      onPressed: () {
                        _addDeposit();
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                    "INPUT ${_inputlocation.text} and ${_inputtype.text}  ${_inputqty.text} grams"),
                              );
                            });
                        Navigator.pushNamed(
                            context, ManagementScreen.routeName);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // DepositWeight(),
                  SizedBox(
                    height: 5,
                  ),
                  // DepositPlastictype(),
                  // DepositSubmit(),
                  // DepositButtonn(),
                ],
              ),
            )));
  }
}
