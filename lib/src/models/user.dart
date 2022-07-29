import 'dart:convert';

import 'package:http/http.dart';

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
  String? token;
  int? id;
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

  static loadCurrentUser(Response response){
    final data = json.decode(response.body) as Map<String, dynamic>;
     currentUser = User.fromMap(data);
    
  }

  static late final User currentUser;

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
