import 'package:flutter/material.dart';
import 'package:jbb/Model/plastic_data.dart';

class PlasticDeposit {
  final PlasticData plasticdata;
  final String collector;

  PlasticDeposit({@required this.plasticdata, @required this.collector});
}

List<PlasticDeposit> plasticdeposit = [
  PlasticDeposit(plasticdata: plasticlist[0], collector: "Asihka"),
  PlasticDeposit(plasticdata: plasticlist[1], collector: "Derry"),
  PlasticDeposit(plasticdata: plasticlist[2], collector: "Retta"),
  PlasticDeposit(plasticdata: plasticlist[3], collector: "MIM"),
  PlasticDeposit(plasticdata: plasticlist[4], collector: "MIM"),
];
