import 'package:flutter/material.dart';

class LoginScreenControllers {
  static void goToRegisterScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'register');
  }
}
