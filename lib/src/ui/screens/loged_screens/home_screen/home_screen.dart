import 'package:flutter/material.dart';
import 'package:social_media/src/models/user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(User.currentUser.toJson()),
      //bottomNavigationBar: BottomNavigationBar(
      //  items: const [],
      //),
    );
  }
}
