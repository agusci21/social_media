import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/src/controllers/general_blocs/user/user_bloc.dart';
import 'package:social_media/src/controllers/screens/loged_screens/individual_screens/edit_profile_screen/edit_profile_screen_controller.dart';
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
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const CircularPhoto(maxRadius: 70),
            TextInput(
              labelText: 'E-mail',
              controller: context.read<UserBloc>().emailController,
            ),
            TextInput(
              labelText: 'Nombre',
              controller: context.read<UserBloc>().nameController,
            ),
            TextInput(
                labelText: 'Alias',
                controller: context.read<UserBloc>().aliasController),
            const Spacer(),
            GeneralButton(
              onTap: () => EditProfileScreenController.modifyUser(context),
              text: 'Modificar datos',
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * .1,
                  top: 5,
                  bottom: 5),
              width: MediaQuery.of(context).size.width * .8,
            ),
            const SizedBox(height: 5),
            GeneralButton(
              onTap: () => EditProfileScreenController.closeSesion(context),
              text: 'Cerrar sesión',
              color: Colors.grey.shade700,
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * .12,
                  top: 5,
                  bottom: 5),
              width: MediaQuery.of(context).size.width * .8,
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
