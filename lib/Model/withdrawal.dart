class Withdrawal {
  final String id;
  final String username, phonenumb, payment;
  final String account, status;
  final num nominal;

  // final double each;

  Withdrawal._(this.id, this.username, this.phonenumb, this.payment,
      this.account, this.status, this.nominal);

  factory Withdrawal.fromJson(Map json) {
    final id = json['_id'];
    // final dep_id = json['dep_id'];
    // final plastic = json['plastic'];
    // final quantity = json['quantity'];
    // final each = json['each']; NEEDS THE double pasr
    return Withdrawal._(
      id,
      json['username'],
      json['phonenumb'],
      json['payment'],
      json['account'],
      json['status'],
      json['nominal'],
    );
  }

  // factory Withdrawal.toJson(String username,String phonenumb, String payment,
  //     String account, String status, num nominal)
  Map<dynamic, dynamic> toJson() {
    return {
      // "id":id,
      "username": this.username,
      "phonenumb": this.phonenumb,
      "payment": this.payment,
      "account": this.account,
      "status": this.status,
      "nominal": this.nominal
    };
  }
}
