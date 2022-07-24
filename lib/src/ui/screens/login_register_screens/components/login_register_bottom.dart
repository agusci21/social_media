import 'package:flutter/material.dart';

class LoginRegisterBottom extends StatelessWidget {
  const LoginRegisterBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {}, //TODO crear accion y parametrizar
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.pink.shade800,
            borderRadius: BorderRadius.circular(10)),
        child: const Text(
          'Ingresar',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
