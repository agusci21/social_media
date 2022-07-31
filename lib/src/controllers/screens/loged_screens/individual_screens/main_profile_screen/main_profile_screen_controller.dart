import 'package:flutter/cupertino.dart';

abstract class MainProfileScreenController {
  static void navigateToEditProfile(BuildContext context) =>
      Navigator.pushNamed(context, 'editProfile');
}
