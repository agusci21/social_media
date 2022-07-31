import 'package:flutter/material.dart';
import 'package:social_media/src/ui/components/general_button.dart';
import 'package:social_media/src/ui/components/login_register_input.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screens/components/circular_photo.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const CircularPhoto(maxRadius: 70),
            const TextInput(labelText: 'Nombre'),
            const TextInput(labelText: 'Apellido'),
            const TextInput(labelText: 'Alias'),
            GeneralButton(
              onTap: () {},
              text: 'Modificar datos',
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * .1,
                  top: 5,
                  bottom: 5),
              width: MediaQuery.of(context).size.width * .8,
            ),
            const SizedBox(
              height: 5,
            ),
            GeneralButton(
              onTap: () {},
              text: 'Cerrar sesión',
              color: Colors.grey.shade700,
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * .12,
                  top: 5,
                  bottom: 5),
              width: MediaQuery.of(context).size.width * .8,
            )
          ],
        ),
      ),
    );
  }
}
