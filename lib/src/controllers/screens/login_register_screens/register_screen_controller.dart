import 'package:flutter/material.dart';

class RegisterScreenController {
  static void goToLoginScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'login');
  }
}
