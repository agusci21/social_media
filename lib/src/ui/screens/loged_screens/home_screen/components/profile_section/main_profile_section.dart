import 'package:flutter/material.dart';
import 'package:social_media/src/models/user.dart';
import 'package:social_media/src/ui/screens/login_register_screens/components/login_register_input.dart';

class MainProfileSection extends StatelessWidget {
  const MainProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Icon(
                // TODO: atrapar la carga de fotos
                Icons.person,
                size: 100,
              ),
            ),
            LoginRegisterInput(
              labelText: 'E-mail',
              controller: TextEditingController(text: User.currentUser!.email),
            ),
            LoginRegisterInput(
              labelText: 'Nombre',
              controller: TextEditingController(text: User.currentUser!.name),
            ),
            LoginRegisterInput(
              labelText: 'Alias',
              controller: TextEditingController(text: User.currentUser!.alias),
            ),
          ],
        ),
      ),
    );
  }
}
