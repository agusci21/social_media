import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({required this.onTap, required this.currentIndex, Key? key})
      : super(key: key);
  final void Function(int)? onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Test'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Test'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'Test'),
      ],
    );
  }
}
