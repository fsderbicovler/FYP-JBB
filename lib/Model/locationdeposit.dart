class LocationDeposit {
  final String id, col_id, building, address, area;

  LocationDeposit._(
      this.id, this.col_id, this.building, this.address, this.area);

  factory LocationDeposit.fromJson(Map json) {
    final id = json['_id'];
    return LocationDeposit._(
        id, json['col_id'], json['building'], json['address'], json['area']);
  }
}
