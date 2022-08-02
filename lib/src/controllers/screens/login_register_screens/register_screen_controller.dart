// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/src/controllers/screens/login_register_screens/login_regiuster_bloc/login_register_bloc.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_screen_controller.dart';
import 'package:social_media/src/core/enviroment.dart';
import 'package:social_media/src/models/user.dart';

abstract class RegisterScreenController {
  static void goToLoginScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'login');
  }

  static Future<http.Response> register(BuildContext context) async {
    final registerBloc = BlocProvider.of<LoginRegisterBloc>(context);
    final user = User(
        alias: registerBloc.aliasController.text,
        email: registerBloc.emailController.text,
        password: registerBloc.passwordController.text,
        name: registerBloc.nameController.text);
    final response = await http.post(
        Uri.parse(
          '${Enviroment.usersUrl}/create',
        ),
        body: user.toJson(),
        headers: {'Content-Type': 'application/json'});
    await LoginScreenControllers.signIn(context);
    return response;
  }
}
