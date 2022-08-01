part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState([this.user]);
  final User? user;
  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  const UserInitial([super.user]);
}
