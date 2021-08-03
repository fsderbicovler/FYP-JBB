import 'package:flutter/material.dart';
import 'package:jbb/View/Home/components/Info_title.dart';
import 'package:jbb/constants.dart';

class HomeInfo extends StatelessWidget {
  HomeInfo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //PROBLEMM!!
              HomeInfoCard(
                information: "Recycling Guideline",
                // numOfBrands: 1,
                press: () {},
              ),
              HomeInfoCard(
                information: "Recycling Mobility",
                // numOfBrands: 1,
                press: () {},
              ),
              // HomeInfoCard(
              //   image: "assets/images/sample1.png",
              //   information: "Recycled products",
              //   // numofinf: 1,
              //   press: () {},
              // ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeInfoCard extends StatelessWidget {
  final String information;
  // final int numOfinfo;  ADDTIONAL
  final GestureTapCallback press;

  const HomeInfoCard(
      {Key key, @required this.information, @required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 300,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        darkgreen.withOpacity(0.7),
                        lightblue,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$information\n",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: blackblack),
                        ),
                        // TextSpan(text: "Read more")
                        // TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
