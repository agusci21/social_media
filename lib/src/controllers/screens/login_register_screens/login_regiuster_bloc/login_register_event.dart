part of 'login_register_bloc.dart';

abstract class LoginRegisterEvent extends Equatable {
  const LoginRegisterEvent();

  @override
  List<Object> get props => [];
}

class Register extends LoginRegisterEvent {}
class Login extends LoginRegisterEvent {}
