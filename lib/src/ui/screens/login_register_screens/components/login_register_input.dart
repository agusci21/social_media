import 'package:flutter/material.dart';

class LoginRegisterInput extends StatelessWidget {
  const LoginRegisterInput(
      {required this.labelText,
      this.controller,
      this.prefixIcon,
      this.obscureText = false,
      Key? key})
      : super(key: key);
  final String labelText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      margin: EdgeInsets.only(
          bottom: 10, left: size.width * .05, right: size.width * .05),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
