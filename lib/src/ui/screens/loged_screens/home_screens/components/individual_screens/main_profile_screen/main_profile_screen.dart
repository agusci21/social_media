import 'package:flutter/material.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screens/components/individual_screens/main_profile_screen/components/profile_screen_header.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Header
            const ProfileScreenHeader(),
            Divider(
              thickness: .9,
              color: Colors.pink.shade900,
            )
          ],
        ),
      ),
    );
  }
}
