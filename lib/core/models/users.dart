// ignore_for_file: prefer_collection_literals, unnecessary_new

class User {
  String? _email;
  String? _username;
  String? _password;
  String? _flaglogged;

  User(this._email, this._username, this._password, this._flaglogged);

  User.map(dynamic obj) {
    _email = obj['email'];
    _username = obj['username'];
    _password = obj['password'];
    _flaglogged = obj['password'];
  }

  String get name => _email!;
  String get username => _username!;
  String get password => _password!;
  String get flaglogged => _flaglogged!;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _email;
    map["username"] = _username;
    map["password"] = _password;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}
