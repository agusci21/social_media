import 'package:flutter/material.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/backgrounded_scaffold.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/inputs_box.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/login_register_bottom.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/login_register_input.dart';

import 'package:social_media/src/ui/screens/login_register_screens/login_screen/components/login_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BackgroundedScaffold(
      background: const LoginBackGround(),
      floatingActionButton: Text(
        'Crear una cuenta',
        style: TextStyle(color: Colors.pink.shade800, fontSize: 17),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      children: [
        SizedBox(
          height: size.height * .2,
        ),
        Text(
          'Iniciar sesión',
          style: TextStyle(color: Colors.pink.shade800, fontSize: 30),
        ),
        SizedBox(
          height: size.height * .1,
        ),
        const LoginRegisterInput(
          labelText: 'E-mail',
          prefixIcon: Icon(Icons.alternate_email),
        ),
        const LoginRegisterInput(
          labelText: 'Password',
          prefixIcon: Icon(Icons.lock_outline_sharp),
        ),
        const LoginRegisterBottom()
      ],
    );
  }
}
