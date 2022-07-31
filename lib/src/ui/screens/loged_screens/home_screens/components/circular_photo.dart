import 'package:flutter/material.dart';
import 'package:social_media/src/models/user.dart';

class CircularPhoto extends StatelessWidget {
  const CircularPhoto({required this.maxRadius, Key? key}) : super(key: key);
  final double maxRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CircleAvatar(
        maxRadius: maxRadius,
        backgroundColor: Colors.pink.shade800,
        child: Text(User.currentUser!.name.substring(0, 2)),
      ),
    );
  }
}
