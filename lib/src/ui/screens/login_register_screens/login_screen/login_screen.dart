import 'package:flutter/material.dart';

import 'package:social_media/src/ui/screens/login_register_screens/login_screen/login_screen_components/login_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const [
        // CustomPainterBackground
        LoginBackGround()
      ],
    ));
  }
}
