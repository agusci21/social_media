import 'package:flutter/material.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/inputs_box.dart';

import 'package:social_media/src/ui/screens/login_register_screens/login_screen/components/login_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputs = [
      Container(
        width: 300,
        margin: const EdgeInsets.only(bottom: 5),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'E-mail',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: const Icon(Icons.alternate_email_sharp)),
        ),
      ),
      Container(
        width: 300,
        margin: const EdgeInsets.only(bottom: 5),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'Password',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: const Icon(Icons.lock_outline_sharp)),
        ),
      ),
    ];
    return Scaffold(
        body: Stack(
      children: [
        const LoginBackGround(),
        InputsBox(
          inputs: inputs,
        ),
      ],
    ));
  }
}
