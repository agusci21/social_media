import 'package:flutter/material.dart';

class BackgroundedScaffold extends StatelessWidget {
  const BackgroundedScaffold(
      {required this.background,
      required this.children,
      this.floatingActionButton,
      this.floatingActionButtonLocation,
      Key? key})
      : super(key: key);
  final Widget background;
  final List<Widget> children;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      body: Stack(
        children: [
          ...[background],
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                ...children
              ],
            ),
          )
        ],
      ),
    );
  }
}
