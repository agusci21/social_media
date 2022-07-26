// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart' show Bloc;
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:social_media/src/controllers/screens/login_register_screens/login_register_screen_helper.dart';

part 'login_register_event.dart';
part 'login_register_state.dart';

class LoginRegisterBloc extends Bloc<LoginRegisterEvent, LoginRegisterState> {
  LoginRegisterBloc() : super(LoginRegisterInitial()) {
    on<Login>((event, emit) async {
      await LoginRegisterScreenHelper.login(
          emailController.text, passwordController.text);
    });
    on<Register>((event, emit) async {
      await LoginRegisterScreenHelper.login(
          emailController.text, passwordController.text);
    });
  }
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController aliasController = TextEditingController();
  //List<TextEditingController> get _controllers =>
  //    [emailController, passwordController, nameController, aliasController];
}
