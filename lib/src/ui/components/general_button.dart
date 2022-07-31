import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    required this.onTap,
    required this.text,
    this.width,
    this.color = const Color.fromARGB(255, 173, 20, 87),
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
  }) : super(key: key);
  final void Function()? onTap;
  final String text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          width: width,
          padding: padding,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
