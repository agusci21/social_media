import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'package:social_media/src/controllers/screens/login_register_screens/login_register_screen_helper.dart';

import 'package:social_media/src/core/enviroment.dart';

abstract class LoginRegisterScreenHelper {
  static login(String email, String password) async {
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
