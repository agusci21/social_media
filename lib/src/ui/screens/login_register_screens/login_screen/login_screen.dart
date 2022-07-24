import 'package:flutter/material.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/backgrounded_scaffold.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/inputs_box.dart';

import 'package:social_media/src/ui/screens/login_register_screens/login_screen/components/login_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final inputs = [
      Container(
        width: 300,
        margin: const EdgeInsets.only(bottom: 10),
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
        margin: const EdgeInsets.only(bottom: 15),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'Password',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: const Icon(Icons.lock_outline_sharp)),
        ),
      ),
    ];
    return BackgroundedScaffold(
      background: const LoginBackGround(),
      floatingActionButton: Text(
        'Crear una cuenta',
        style: TextStyle(color: Colors.pink.shade800, fontSize: 17),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      children: [
        SizedBox(
          height: size.height * .35,
        ),
        Text(
          'Iniciar sesión',
          style: TextStyle(color: Colors.pink.shade800, fontSize: 30),
        ),
        InputsBox(
          inputs: inputs,
          margin: const EdgeInsets.only(top: 20, bottom: 20),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          alignment: Alignment.center,
          width: 250,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.pink.shade800,
              borderRadius: BorderRadius.circular(10)),
          child: const Text(
            'Ingresar',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
