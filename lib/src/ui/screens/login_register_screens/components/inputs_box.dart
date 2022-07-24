import 'package:flutter/material.dart';

class InputsBox extends StatelessWidget {
  const InputsBox({required this.inputs, this.margin, Key? key})
      : super(key: key);
  final List<Widget> inputs;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: margin ??
          EdgeInsets.only(left: size.width * .4, top: size.height * .1),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.pink)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: inputs,
      ),
    );
  }
}
