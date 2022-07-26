import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_regiuster_bloc/login_register_bloc.dart';

import 'package:social_media/src/core/page_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => LoginRegisterBloc())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Social Media',
          routes: routes,
          initialRoute: 'login',
        ));
  }
}
