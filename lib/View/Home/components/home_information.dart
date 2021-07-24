import 'package:flutter/material.dart';
import 'package:jbb/View/Home/components/Info_title.dart';

class HomeInfo extends StatelessWidget {
  HomeInfo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: InfoTitle(
            title: "Learn more on Recycling",
            press: () {},
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //PROBLEMM!!
              // HomeInfoCard(
              //   image: "assets/images/sample1.png",
              //   information: "Recycling Guideline",
              //   // numOfBrands: 1,
              //   press: () {},
              // ),
              // HomeInfoCard(
              //   // image: "assets/images/sample1.png",
              //   information: "Recycling Mobility",
              //   // numOfBrands: 1,
              //   press: () {},
              // ),
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
  final String image;
  // final int numOfinfo;  ADDTIONAL
  final GestureTapCallback press;

  const HomeInfoCard(
      {Key key,
      @required this.image,
      @required this.information,
      @required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 242,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
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
                          ),
                        ),
                        TextSpan(text: "Read more")
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
