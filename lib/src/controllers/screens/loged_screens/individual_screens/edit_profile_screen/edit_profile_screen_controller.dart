import 'package:flutter/cupertino.dart';
import 'package:social_media/src/controllers/helpers/token_helpers/token_helpers.dart';

abstract class EditProfileScreenController{
  static void closeSesion(BuildContext context){
    TokenHelper.deleteToken();
    Navigator.pushReplacementNamed(context, 'login');
  }
}