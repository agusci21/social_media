import 'package:flutter/material.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screens/components/individual_screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screens/home_screen.dart';

import 'package:social_media/src/ui/screens/login_register_screens/login_screen/login_screen.dart';
import 'package:social_media/src/ui/screens/login_register_screens/register_screen/register_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'login': (BuildContext context) => const LoginScreen(),
  'register': (BuildContext context) => const RegisterScreen(),
  'home': (BuildContext context) => const HomeScreen(),
  'editProfile': (BuildContext context) => const EditProfileScreen(),
};
