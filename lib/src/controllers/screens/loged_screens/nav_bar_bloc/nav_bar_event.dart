part of 'nav_bar_bloc.dart';

abstract class NavBarEvent extends Equatable {
  const NavBarEvent();

  @override
  List<Object> get props => [];
}

class SelectOption extends NavBarEvent{
  const SelectOption(this.selectedOption);
  final int selectedOption;
}
