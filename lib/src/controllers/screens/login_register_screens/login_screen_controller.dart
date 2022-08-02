// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/src/controllers/helpers/token_helpers/token_helpers.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_regiuster_bloc/login_register_bloc.dart';
import 'package:social_media/src/core/enviroment.dart';
import 'package:social_media/src/models/user.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screens/home_screen.dart';

abstract class LoginScreenControllers {
  static void goToRegisterScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'register');
  }

  static Future<void> signIn(BuildContext context) async {
    final body = json.encode({
      'email': context.read<LoginRegisterBloc>().emailController.text,
      'password': context.read<LoginRegisterBloc>().passwordController.text
    });
    final response = await http.post(
        Uri.parse(
          '${Enviroment.authUrl}/login',
        ),
        body: body,
        headers: Enviroment.headers);
    if (response.statusCode != 200) {
      if (response.statusCode == 400) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Contraseña invalida')));
      }
      if (response.statusCode == 404) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('E-mail no registrado')));
      }
      return;
    }
    final Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;
    final decodedData = data['user'] as Map<String, dynamic>;
    User.currentUser = User.fromMap(decodedData);
    TokenHelper.saveToken(data['token']);
    navigatoToHomeScreen(context);
  }

  static void navigatoToHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
  }
}
