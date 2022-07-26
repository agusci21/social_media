import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'login_register_event.dart';
part 'login_register_state.dart';

class LoginRegisterBloc extends Bloc<LoginRegisterEvent, LoginRegisterState> {
  LoginRegisterBloc() : super(LoginRegisterInitial()) {
    on<LoginRegisterEvent>((event, emit) {});
  }
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController aliasController = TextEditingController();
}
