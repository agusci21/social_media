part of 'login_register_bloc.dart';

abstract class LoginRegisterState extends Equatable {
  const LoginRegisterState();
  
  @override
  List<Object> get props => [];
}

class LoginRegisterInitial extends LoginRegisterState {}
