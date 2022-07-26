import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:social_media/src/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial(User.currentUser!)) {
    on<UserEvent>((event, emit) {});
  }

  final emailController = TextEditingController(text: User.currentUser!.email);
  final nameController = TextEditingController(text: User.currentUser!.name);
  final aliasController = TextEditingController(text: User.currentUser!.alias);
}
