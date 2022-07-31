// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'nav_bar_event.dart';
part 'nav_bar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  NavBarBloc() : super(const NavBarState(0)) {
    on<SelectOption>((event, emit) {
      emit(NavBarState(event.selectedOption));
      controller.animateToPage(state.selectedOption,
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    });
  }
  final controller = PageController();
}
