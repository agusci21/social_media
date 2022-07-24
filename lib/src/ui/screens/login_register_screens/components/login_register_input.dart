import 'package:flutter/material.dart';

class LoginRegisterInput extends StatefulWidget {
  const LoginRegisterInput(
      {required this.labelText, this.controller, this.prefixIcon, Key? key})
      : super(key: key);
  final String labelText;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  @override
  State<LoginRegisterInput> createState() => _LoginRegisterInputState();
}

class _LoginRegisterInputState extends State<LoginRegisterInput> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      margin: EdgeInsets.only(
          bottom: 10, left: size.width * .05, right: size.width * .05),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: widget.prefixIcon,
        ),
      ),
    );
  }
}
