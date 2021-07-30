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

  final int each = 20;
  double _credit;

  void _addDeposit() async {
    final dep_id = user;
    final loc = _inputlocation.text;
    final type = _inputtype.text;
    final qty = int.parse(_inputqty.text);
    final credit = _credit;
    final stat = "processing";

    final adddeposit =
        await widget.api.addDeposit(dep_id, loc, type, qty, credit, stat);
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
                    "Deposit plastic bottle\n",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: primarycolour),
                  ),
                  Text(
                    "Please weight and sort the bottle before deposit!\n",
                    style: TextStyle(
                        fontSize: 15,
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
                  Text(
                    "Please refresh for confirmation",
                    style: TextStyle(
                        color: primarycolour,
                        fontSize: 16,
                        fontStyle: FontStyle.italic),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          color: primarycolour,
                          icon: Icon(Icons.refresh_outlined),
                          onPressed: () {
                            setState(() {
                              _credit = double.parse(_inputqty.text);
                              _credit = _credit * each;
                            });
                          }),
                      Text(
                        "You have earn Rp. $_credit  for ${_inputtype.text} plastic!!!",
                        style: TextStyle(
                            color: darkgreen,
                            fontSize: 14,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
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
                        _credit = double.parse(_inputqty.text);
                        _credit = _credit * each;
                        _addDeposit();

                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //         content: Text(
                        //             "INPUT ${_inputlocation.text} and ${_inputtype.text}  ${_inputqty.text} grams"),
                        //       );
                        //     });
                        Navigator.pushNamed(
                            context, ManagementScreen.routeName);
                      },
                    ),
                  ),
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
