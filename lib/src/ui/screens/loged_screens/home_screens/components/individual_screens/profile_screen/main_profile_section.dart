import 'package:flutter/material.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screens/components/circular_photo.dart';

class MainProfileSection extends StatelessWidget {
  const MainProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Header
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
               
                    CircularPhoto(
                      maxRadius: MediaQuery.of(context).size.width * .12,
                    )
              ],
            )
          ],
        ),
      ),
    );
  }
}
