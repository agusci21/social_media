import 'dart:convert';

class User {
  User(
      {required this.alias,
      required this.email,
      required this.name,
      required this.password});
  String alias;
  String email;
  String name;
  String password;

  Map<String, dynamic> toMap() {
    return {
      'alias': alias,
      'email': email,
      'name': name,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      alias: map['alias'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
