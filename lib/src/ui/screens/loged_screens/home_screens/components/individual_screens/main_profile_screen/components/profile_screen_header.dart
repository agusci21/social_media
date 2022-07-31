import 'package:flutter/material.dart';
import 'package:social_media/src/models/user.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screens/components/circular_photo.dart';

class ProfileScreenHeader extends StatelessWidget {
  const ProfileScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularPhoto(
          maxRadius: MediaQuery.of(context).size.width * .12,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .6,
          //height: MediaQuery.of(context).size.height * .05,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                User.currentUser!.alias,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              GestureDetector(
                onTap: () {
                  //TODO: implementar la navegacion de pantalla
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink.shade800)),
                  child: const Text('Editar perfil'),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}