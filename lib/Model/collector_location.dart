import 'package:flutter/material.dart';

class CollectorLoc {
  final String col_id, building, address, area;
  final int poscode;
  final double distance;

  CollectorLoc(
      {@required this.col_id,
      @required this.building,
      @required this.address,
      @required this.area,
      @required this.poscode,
      @required this.distance});
}

List<CollectorLoc> locationlist = [
  CollectorLoc(
      col_id: "C000x",
      building: "Mall Pondok Indah",
      address:
          "Jalan Metro Pondok Indah Kav. IV, Kec. Kby. Lama, Jakarta Selatan, 12310, Indonesia",
      area: "Jakarta Selatan",
      poscode: 11300,
      distance: 11.5),
  CollectorLoc(
      col_id: "C0001",
      building: "Mall Taman anggrek",
      address: "Jakarta Barat",
      area: "Jakarta Barat",
      poscode: 11400,
      distance: 1.5),
  CollectorLoc(
      col_id: "C0002",
      building: "Mall PIK",
      address: "Jakarta Utara",
      area: "Jakarta Utara",
      poscode: 11100,
      distance: 18.3),
  CollectorLoc(
      col_id: "C0003",
      building: "Mall Citra gran",
      address: "Jakarta Timur",
      area: "Jakarta Timur",
      poscode: 11000,
      distance: 21.5),
];
