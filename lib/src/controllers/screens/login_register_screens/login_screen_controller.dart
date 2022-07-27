import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/src/core/enviroment.dart';

abstract class LoginScreenControllers {
  static void goToRegisterScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'register');
  }
  static Future<http.Response>login(String email, String password) async {
    final body = json.encode({'email': email, 'password': password});
    final response = await http.post(
        Uri.parse(
          '${Enviroment.authUrl}/login',
        ),
        body: body,
        headers: {'Content-Type': 'application/json'});
    return response;
  }
}
