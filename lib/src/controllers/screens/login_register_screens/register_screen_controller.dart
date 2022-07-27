import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/src/core/enviroment.dart';
import 'package:social_media/src/models/user.dart';

abstract class RegisterScreenController {
  static void goToLoginScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'login');
  }

  static Future<http.Response> register(User user) async {
    final response = await http.post(
        Uri.parse(
          '${Enviroment.usersUrl}/create',
        ),
        body: user.toJson(),
        headers: {'Content-Type': 'application/json'});
    return response;
  }
}
