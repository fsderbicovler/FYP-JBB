class Profile {
  String id;
  String _username;

  String get username => _username;

  set username(String username) {
    _username = username;
  }

  String phonenumber;
  String fullname;
  String addresss;
  double credit;

  Profile._(this.id, this._username, this.phonenumber, this.fullname,
      this.addresss, this.credit);

  factory Profile.fromJson(Map json) {
    final id = json['_id'];
    return Profile._(id, json['username'], json['phonenumb'], json['fullname'],
        json['address'], json['credit']);
  }
}
