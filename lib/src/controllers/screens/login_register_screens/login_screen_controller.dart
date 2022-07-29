// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/src/controllers/helpers/token_helpers/token_helpers.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_regiuster_bloc/login_register_bloc.dart';
import 'package:social_media/src/core/enviroment.dart';
import 'package:social_media/src/models/user.dart';

abstract class LoginScreenControllers {
  static void goToRegisterScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'register');
  }

  static Future<http.Response> _login(String email, String password) async {
    final body = json.encode({'email': email, 'password': password});
    final response = await http.post(
        Uri.parse(
          '${Enviroment.authUrl}/login',
        ),
        body: body,
        headers: {'Content-Type': 'application/json'});
    final Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;
    if(response.statusCode == 200) TokenHelper.saveToken(data['token']);
    User.loadCurrentUser(response);
    return response;
  }

  static void signIn(BuildContext context) async {
    final response = await _login(
        context.read<LoginRegisterBloc>().emailController.text,
        context.read<LoginRegisterBloc>().passwordController.text);
    if (response.statusCode == 200) navigatoToHomeScreen(context);
  }

  static void navigatoToHomeScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'home');
  }
}
