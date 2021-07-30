class Plasticdeposit {
  final String id;
  final String dep_id, location, plastic;
  final int quantity;
  final double credit;
  final String status;

  Plasticdeposit._(this.id, this.dep_id, this.location, this.plastic,
      this.quantity, this.credit, this.status);

  factory Plasticdeposit.fromJson(Map json) {
    final id = json['_id'];
    // final dep_id = json['dep_id'];
    // final plastic = json['plastic'];
    // final quantity = json['quantity'];
    // final each = json['each']; NEEDS THE double pasr
    return Plasticdeposit._(id, json['dep_id'], json['location'],
        json['plastic'], json['quantity'], json['credit'], json['status']);
  }
}
