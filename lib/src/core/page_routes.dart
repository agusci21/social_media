import 'package:flutter/material.dart';
import 'package:social_media/src/ui/screens/login_register_screens/login_screen/login_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'login' : (BuildContext context) => const LoginScreen(),
};