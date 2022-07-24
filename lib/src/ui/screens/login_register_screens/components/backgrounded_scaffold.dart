import 'package:flutter/material.dart';

class BackgroundedScaffold extends StatelessWidget {
  const BackgroundedScaffold({required this.background, required this.children, Key? key})
      : super(key: key);
  final Widget background;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ...[background],
          Column(
            children: children,
          )
        ],
      ),
    );
  }
}
