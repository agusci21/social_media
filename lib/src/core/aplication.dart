import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/src/controllers/general_blocs/user/user_bloc.dart';
import 'package:social_media/src/controllers/helpers/token_helpers/token_helpers.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_regiuster_bloc/login_register_bloc.dart';

import 'package:social_media/src/core/page_routes.dart';
import 'package:social_media/src/models/user.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('IS NULL USER: ${User.currentUser == null}');
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => LoginRegisterBloc()),
          BlocProvider(create: (BuildContext context) => UserBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Social Media',
          routes: routes,
          initialRoute: TokenHelper.token == null ? 'login' : 'home',
        ));
  }
}
