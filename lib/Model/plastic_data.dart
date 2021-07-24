import 'package:flutter/material.dart';

class PlasticData {
  final String type;
  final String brand;
  final double quantity, totalprice, perprice;
  final bool isGood, isWorst;

  //PLASTIC INITIALISE
  PlasticData({
    @required this.type,
    @required this.brand,
    @required this.perprice,
    @required this.quantity,
    @required this.totalprice,
    this.isGood = false,
    this.isWorst = false,
  });
}

List<PlasticData> plasticlist = [
  PlasticData(
      type: "PPE",
      brand: "Coca-cola",
      perprice: 0.05,
      quantity: 0.0,
      totalprice: 0.05),
  PlasticData(
      type: "PPL",
      brand: "AQUA",
      perprice: 0.02,
      quantity: 1.0,
      totalprice: 0.2),
  PlasticData(
      type: "PP1",
      brand: "SANIA",
      perprice: 0.3,
      quantity: 0.4,
      totalprice: 1.2),
  PlasticData(
      type: "PPL",
      brand: "Greentea",
      perprice: 0.3,
      quantity: 0.4,
      totalprice: 1.2),
  PlasticData(
      type: "PPE",
      brand: "Sprite",
      perprice: 1.5,
      quantity: 0.5,
      totalprice: 1),
];
