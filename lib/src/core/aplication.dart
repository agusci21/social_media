import 'package:flutter/material.dart';

import 'package:social_media/src/core/page_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media',
      routes: routes,
      initialRoute: 'login',
    );
  }
}
