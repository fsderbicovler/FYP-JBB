import 'package:flutter/material.dart';
import 'package:jbb/View/Home/components/home_banner.dart';
import 'package:jbb/View/Home/components/home_header.dart';
import 'package:jbb/View/Home/components/home_information.dart';
import 'package:jbb/View/Home/components/home_menu.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //sized box
            HomeHeader(),
            SizedBox(
              height: 20,
            ),
            HomeBanner(),
            HomeMenu(),
            HomeInfo(),
          ],
        ),
      ),
    );
  }
}
