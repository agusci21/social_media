import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:social_media/src/controllers/screens/login_register_screens/login_regiuster_bloc/login_register_bloc.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/register_screen_controller.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/backgrounded_scaffold.dart';
import 'package:social_media/src/ui/components/general_button.dart';
import 'package:social_media/src/ui/components/login_register_input.dart';
import 'package:social_media/src/ui/screens/login_register_screens/login_screen/components/login_background.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BackgroundedScaffold(
      background: const LoginBackGround(),
      floatingActionButton: TextButton(
        onPressed: () {
          RegisterScreenController.goToLoginScreen(context);
        },
        child: Text(
          'Iniciar sesión',
          style: TextStyle(color: Colors.pink.shade800, fontSize: 17),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      children: [
        SizedBox(
          height: size.height * .2,
        ),
        Text(
          'Crear una cuenta',
          style: TextStyle(color: Colors.pink.shade800, fontSize: 30),
        ),
        SizedBox(
          height: size.height * .1,
        ),
        TextInput(
          labelText: 'E-mail',
          controller: context.read<LoginRegisterBloc>().emailController,
          prefixIcon: const Icon(Icons.alternate_email),
        ),
        TextInput(
          labelText: 'Password',
          controller: context.read<LoginRegisterBloc>().passwordController,
          obscureText: true,
          prefixIcon: const Icon(Icons.lock_outline_sharp),
        ),
        TextInput(
          labelText: 'Nombre',
          controller: context.read<LoginRegisterBloc>().nameController,
          prefixIcon: const Icon(Icons.person),
        ),
        TextInput(
          labelText: 'Alias',
          controller: context.read<LoginRegisterBloc>().aliasController,
          prefixIcon: const Icon(Icons.person_outline_rounded),
        ),
        GeneralButton(
          text: 'Registrarse',
          onTap: () => RegisterScreenController.register(context),
        )
      ],
    );
  }
}
