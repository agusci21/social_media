import 'package:flutter/material.dart';

class LoginRegisterBottom extends StatelessWidget {
  const LoginRegisterBottom({required this.onTap, required this.text, Key? key})
      : super(key: key);
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.pink.shade800,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
