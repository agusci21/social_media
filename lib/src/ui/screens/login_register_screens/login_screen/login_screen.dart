import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_regiuster_bloc/login_register_bloc.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/backgrounded_scaffold.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/login_register_bottom.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/login_register_input.dart';

import 'package:social_media/src/ui/screens/login_register_screens/login_screen/components/login_background.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BackgroundedScaffold(
      background: const LoginBackGround(),
      floatingActionButton: TextButton(
        onPressed: () => LoginScreenControllers.goToRegisterScreen(context),
        child: Text(
          'Crear una cuenta',
          style: TextStyle(color: Colors.pink.shade800, fontSize: 17),
        ),
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
        LoginRegisterInput(
          labelText: 'E-mail',
          controller: context.read<LoginRegisterBloc>().emailController,
          prefixIcon: const Icon(Icons.alternate_email),
        ),
        LoginRegisterInput(
          labelText: 'Password',
          obscureText: true,
          controller: context.read<LoginRegisterBloc>().passwordController,
          prefixIcon: const Icon(Icons.lock_outline_sharp),
        ),
        LoginRegisterBottom(
          text: 'Iniciar sesión',
          onTap: () => LoginScreenControllers.signIn(context),
        )
      ],
    );
  }
}
