// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:social_media/src/controllers/general_blocs/user/user_bloc.dart';
import 'package:social_media/src/controllers/helpers/token_helpers/token_helpers.dart';
import 'package:social_media/src/core/enviroment.dart';
import 'package:social_media/src/models/user.dart';

abstract class EditProfileScreenController {
  static void closeSesion(BuildContext context) {
    TokenHelper.deleteToken();
    Navigator.pushReplacementNamed(context, 'login');
  }

  static void modifyUser(BuildContext context) async {
    final body = json.encode({
      'id': User.currentUser!.id,
      'email': context.read<UserBloc>().emailController.text,
      'name': context.read<UserBloc>().nameController.text,
      'alias': context.read<UserBloc>().aliasController.text
    });
    await http.put(Uri.parse('${Enviroment.usersUrl}/modify'),
        headers: Enviroment.headers, body: body);
    showDialog(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
              content: Center(
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: Text('Usuario modificado, \nInicie sesión Nuevamente'),
              ),
            ));
    await Future.delayed(const Duration(seconds: 3));
    closeSesion(context);
  }
}
