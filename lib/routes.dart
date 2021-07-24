import 'package:flutter/widgets.dart';
import 'package:jbb/View/Deposit/deposit_screen.dart';
import 'package:jbb/View/Find%20Collector/find_collector_Screen.dart';
import 'package:jbb/View/Home/home_screen.dart';
import 'package:jbb/View/Login/jbb_login.dart';
import 'package:jbb/View/Management/manage_screen.dart';
import 'package:jbb/View/Profile/profile_screen.dart';
import 'package:jbb/View/Registrations/registration_screen.dart';
import 'package:jbb/View/Withdraw/components/withdraw_check.dart';
import 'package:jbb/View/Withdraw/components/withdraw_screen.dart';

//ROUTERS for accessing specific pages
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  RpersonalScreen.routeName: (context) => RpersonalScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  WithdrawCheck.routeName: (context) => WithdrawCheck(),
  WithdrawScreen.routeName: (context) => WithdrawScreen(),
  DepositScreen.routeName: (context) => DepositScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  FindCollector.routeName: (context) => FindCollector(),
  ManagementScreen.routeName: (context) => ManagementScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
